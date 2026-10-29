@echo off
setlocal

rem Run from this script's directory so relative paths always work.
cd /d "%~dp0"

set "PORT=8931"
set "DOCS_ROOT=%~dp0"
if "%DOCS_ROOT:~-1%"=="\" set "DOCS_ROOT=%DOCS_ROOT:~0,-1%"

if /I "%~1"=="--powershell" goto :run_powershell
if /I "%~1"=="-ps" goto :run_powershell

where py >nul 2>nul
if %errorlevel%==0 goto :run_py

where python >nul 2>nul
if %errorlevel%==0 goto :run_python

goto :run_powershell



:run_py
echo Starting local documentation server on http://127.0.0.1:%PORT%/index.html
start "" "http://127.0.0.1:%PORT%/index.html"
py -3 -m http.server %PORT%
goto :eof

:run_python
echo Starting local documentation server on http://127.0.0.1:%PORT%/index.html
start "" "http://127.0.0.1:%PORT%/index.html"
python -m http.server %PORT%
goto :eof

:run_powershell
echo Python was not found. Falling back to native PowerShell server.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0serve-docs.ps1" -Port %PORT% -RootPath "%DOCS_ROOT%"
goto :eof
