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

echo "==> Sincronizando con el repositorio remoto..."
git -C "$REPO_ROOT" fetch origin

echo "==> Configurando carpeta public/ como worktree de gh-pages..."
# Si public/ existe pero no es un worktree (por ejemplo, es una carpeta normal), la eliminamos
if [ -d "$PUBLIC_DIR" ] && [ ! -d "$PUBLIC_DIR/.git" ] && [ ! -f "$PUBLIC_DIR/.git" ]; then
  echo "Limpiando directorio public/ existente que no es un worktree..."
  rm -rf "$PUBLIC_DIR"
fi

# Si el worktree no existe, lo creamos
if [ ! -d "$PUBLIC_DIR" ]; then
  # Verificamos si existe origin/gh-pages para usarlo de base, si no, creamos un branch huérfano (orphan)
  if git -C "$REPO_ROOT" show-ref --verify --quiet refs/remotes/origin/gh-pages; then
    git -C "$REPO_ROOT" worktree add -B gh-pages "$PUBLIC_DIR" origin/gh-pages
  else
    git -C "$REPO_ROOT" worktree add -B gh-pages "$PUBLIC_DIR"
  fi
fi

# Asegurarse de que public/ esté en la rama gh-pages
PUBLIC_BRANCH=$(git -C "$PUBLIC_DIR" rev-parse --abbrev-ref HEAD 2>/dev/null || echo "")
if [ "$PUBLIC_BRANCH" != "gh-pages" ]; then
  echo "Cambiando public/ a la rama gh-pages..."
  git -C "$PUBLIC_DIR" checkout gh-pages
fi

# Sincronizar rama local gh-pages con origin/gh-pages si existe para evitar divergencias
if git -C "$REPO_ROOT" show-ref --verify --quiet refs/remotes/origin/gh-pages; then
  echo "Sincronizando rama local gh-pages con origin/gh-pages..."
  git -C "$PUBLIC_DIR" reset --hard origin/gh-pages
fi

echo "==> Limpiando public/..."
# Eliminar archivos generados previos (excepto .git y archivos de control)
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
  echo "Subiendo cambios a GitHub..."
  git push origin gh-pages
  echo ""
  echo "==> ¡Listo! Sitio publicado en: https://mvalentne.github.io/Blog_TheLearnerBoys/"
fi

cd "$REPO_ROOT"
