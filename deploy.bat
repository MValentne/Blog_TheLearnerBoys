@echo off
rem ============================================================
rem  deploy.bat  —  Deploy del blog a GitHub Pages (Windows)
rem  Ejecuta deploy.ps1 usando PowerShell.
rem ============================================================

set "SCRIPT_DIR=%~dp0"
set "DEPLOY_PS1=%SCRIPT_DIR%deploy.ps1"

if not exist "%DEPLOY_PS1%" (
    echo.
    echo  ERROR: No se encontro deploy.ps1 en "%DEPLOY_PS1%".
    echo.
    pause
    exit /b 1
)

echo.
echo  =^> Iniciando deploy mediante PowerShell...
echo.

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%DEPLOY_PS1%"

if %errorlevel% neq 0 (
    echo.
    echo  El deploy termino con errores (codigo: %errorlevel%).
    pause
    exit /b %errorlevel%
)

echo.
pause
