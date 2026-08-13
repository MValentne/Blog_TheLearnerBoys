@echo off
rem ============================================================
rem  deploy.bat  —  Deploy del blog a GitHub Pages (Windows)
rem  Llama al mismo deploy.sh usando Git Bash.
rem  Requiere: Git for Windows instalado (viene con Visual Studio).
rem ============================================================

rem Buscar git.exe para localizar Git Bash (bash.exe)
for /f "delims=" %%G in ('where git 2^>nul') do (
    set "GIT_EXE=%%G"
    goto :found_git
)

echo.
echo  ERROR: No se encontro git.exe en el PATH.
echo  Instala "Git for Windows" o habilita el componente Git en Visual Studio.
echo.
pause
exit /b 1

:found_git
rem Git Bash (bash.exe) vive junto a git.exe: ..\..\bin\bash.exe o ..\bash.exe
rem Detectamos la carpeta raiz de Git:
for %%G in ("%GIT_EXE%") do set "GIT_BIN=%%~dpG"
rem GIT_BIN = C:\Program Files\Git\cmd\   -> subimos dos niveles
set "GIT_ROOT=%GIT_BIN%..\.."
set "BASH_EXE=%GIT_ROOT%\bin\bash.exe"

if not exist "%BASH_EXE%" (
    echo.
    echo  ERROR: No se encontro bash.exe en "%BASH_EXE%".
    echo  Asegurate de tener Git for Windows con Git Bash habilitado.
    echo.
    pause
    exit /b 1
)

rem Ruta al deploy.sh (mismo directorio que este .bat)
set "SCRIPT_DIR=%~dp0"
rem Quitar la barra final
if "%SCRIPT_DIR:~-1%"=="\" set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"
set "DEPLOY_SH=%SCRIPT_DIR%\deploy.sh"

if not exist "%DEPLOY_SH%" (
    echo.
    echo  ERROR: No se encontro deploy.sh en "%DEPLOY_SH%".
    echo.
    pause
    exit /b 1
)

echo.
echo  =^> Iniciando deploy mediante Git Bash...
echo.

"%BASH_EXE%" --login -i "%DEPLOY_SH%"

if %errorlevel% neq 0 (
    echo.
    echo  El deploy termino con errores (codigo: %errorlevel%).
    pause
    exit /b %errorlevel%
)

echo.
pause
