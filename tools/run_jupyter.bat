@echo off
setlocal

set VENV_DIR=%~dp0..\.venv
set CONTENT_DIR=%~dp0..\content

if exist %VENV_DIR%\ (
    call %VENV_DIR%\Scripts\activate.bat
) else (
    python -m venv %VENV_DIR%
    call %VENV_DIR%\Scripts\activate.bat
    pip install -r requirements.txt
)

jupyter-lab --notebook-dir=%CONTENT_DIR%
call deactivate
