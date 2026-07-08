#!/bin/bash
# Deploy del blog a GitHub Pages (rama gh-pages)
set -e

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
PUBLIC_DIR="$REPO_ROOT/public"

echo "==> Verificando rama actual..."
CURRENT_BRANCH=$(git -C "$REPO_ROOT" rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" != "master" ]; then
  echo "ERROR: Debés estar en la rama 'master' para hacer deploy. Rama actual: $CURRENT_BRANCH"
  exit 1
fi

echo "==> Configurando carpeta public/ como worktree de gh-pages..."
if [ ! -d "$PUBLIC_DIR/.git" ] && [ ! -f "$PUBLIC_DIR/.git" ]; then
  # Si public/ existe pero no es un worktree, lo limpiamos
  if [ -d "$PUBLIC_DIR" ]; then
    rm -rf "$PUBLIC_DIR"
  fi
  git -C "$REPO_ROOT" worktree add -B gh-pages public origin/gh-pages
fi

# Asegurarse de que public/ esté en la rama gh-pages
PUBLIC_BRANCH=$(git -C "$PUBLIC_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")
if [ "$PUBLIC_BRANCH" != "gh-pages" ]; then
  echo "ADVERTENCIA: public/ está en la rama '$PUBLIC_BRANCH', cambiando a gh-pages..."
  git -C "$PUBLIC_DIR" checkout gh-pages
fi

echo "==> Limpiando public/..."
# Eliminar archivos generados previos (excepto .git)
find "$PUBLIC_DIR" -mindepth 1 -not -path "$PUBLIC_DIR/.git" -not -path "$PUBLIC_DIR/.git/*" -delete 2>/dev/null || true

echo "==> Generando el sitio con Hugo..."
cd "$REPO_ROOT"
hugo --minify

echo "==> Publicando en gh-pages..."
cd "$PUBLIC_DIR"
git add --all
# Solo hacer commit si hay cambios
if git diff --staged --quiet; then
  echo "Sin cambios para publicar."
else
  git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin gh-pages
  echo ""
  echo "==> ¡Listo! Sitio publicado en: https://mvalentne.github.io/Blog_TheLearnerBoys/"
fi

cd "$REPO_ROOT"
