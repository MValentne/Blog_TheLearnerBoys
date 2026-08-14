# Deploy del blog a GitHub Pages (rama gh-pages) para PowerShell
$ErrorActionPreference = "Stop"

$RepoRoot = $PSScriptRoot
$PublicDir = Join-Path $RepoRoot "public"

# Validar que git esté disponible
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "ERROR: Git no está instalado o no se encuentra en el PATH."
    exit 1
}

# Validar que hugo esté disponible
if (-not (Get-Command hugo -ErrorAction SilentlyContinue)) {
    Write-Error "ERROR: Hugo no está instalado o no se encuentra en el PATH."
    exit 1
}

Write-Host "==> Verificando rama actual..." -ForegroundColor Cyan
$CurrentBranch = (git -C "$RepoRoot" rev-parse --abbrev-ref HEAD).Trim()
if ($CurrentBranch -ne "master") {
    Write-Error "ERROR: Debés estar en la rama 'master' para hacer deploy. Rama actual: $CurrentBranch"
    exit 1
}

Write-Host "==> Sincronizando con el repositorio remoto..." -ForegroundColor Cyan
git -C "$RepoRoot" fetch origin

Write-Host "==> Configurando carpeta public/ como worktree de gh-pages..." -ForegroundColor Cyan
# Limpiar worktrees huérfanos/prunables en git
git -C "$RepoRoot" worktree prune

# Si public/ existe pero no es un worktree (por ejemplo, es una carpeta normal), la eliminamos
if ((Test-Path "$PublicDir") -and -not (Test-Path (Join-Path "$PublicDir" ".git"))) {
    Write-Host "Limpiando directorio public/ existente que no es un worktree..." -ForegroundColor Yellow
    Remove-Item -Path "$PublicDir" -Recurse -Force
}

# Comprobar si existe la rama remota origin/gh-pages
git -C "$RepoRoot" show-ref --verify --quiet refs/remotes/origin/gh-pages
$HasRemoteGhPages = ($LASTEXITCODE -eq 0)

# Si el worktree no existe, lo creamos
if (-not (Test-Path "$PublicDir")) {
    if ($HasRemoteGhPages) {
        git -C "$RepoRoot" worktree add -B gh-pages "$PublicDir" origin/gh-pages
    } else {
        git -C "$RepoRoot" worktree add -B gh-pages "$PublicDir"
    }
}

# Asegurarse de que public/ esté en la rama gh-pages
$PublicBranch = ""
try {
    $PublicBranch = (git -C "$PublicDir" rev-parse --abbrev-ref HEAD 2>$null).Trim()
} catch {
    $PublicBranch = ""
}

if ($PublicBranch -ne "gh-pages") {
    Write-Host "Cambiando public/ a la rama gh-pages..." -ForegroundColor Yellow
    git -C "$PublicDir" checkout gh-pages
}

# Sincronizar rama local gh-pages con origin/gh-pages si existe para evitar divergencias
if ($HasRemoteGhPages) {
    Write-Host "Sincronizando rama local gh-pages con origin/gh-pages..." -ForegroundColor Yellow
    git -C "$PublicDir" reset --hard origin/gh-pages
}

Write-Host "==> Limpiando public/..." -ForegroundColor Cyan
# Eliminar archivos generados previos (excepto .git)
Get-ChildItem -Path "$PublicDir" -Force | Where-Object { $_.Name -ne ".git" } | Remove-Item -Recurse -Force

Write-Host "==> Generando el sitio con Hugo..." -ForegroundColor Cyan
Push-Location "$RepoRoot"
try {
    hugo --minify
} finally {
    Pop-Location
}

Write-Host "==> Publicando en gh-pages..." -ForegroundColor Cyan
Push-Location "$PublicDir"
try {
    git add --all
    # Solo hacer commit si hay cambios
    git diff --staged --quiet
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Sin cambios para publicar." -ForegroundColor Yellow
    } else {
        $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        git commit -m "Deploy: $Timestamp"
        Write-Host "Subiendo cambios a GitHub..." -ForegroundColor Cyan
        git push origin gh-pages
        Write-Host ""
        Write-Host "==> ¡Listo! Sitio publicado en: https://mvalentne.github.io/Blog_TheLearnerBoys/" -ForegroundColor Green
    }
} finally {
    Pop-Location
}
