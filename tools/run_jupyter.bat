@echo off
set VENV_DIR=..\.venv
set CONTENT_DIR=..\content

if exist %VENV_DIR%\ (
    call %VENV_DIR%\Scripts\activate.bat
) else (
    python -m venv %VENV_DIR%
    call %VENV_DIR%\Scripts\activate.bat
    pip install -r requirements.txt
)

jupyter-lab --notebook-dir=%CONTENT_DIR%
call deactivate