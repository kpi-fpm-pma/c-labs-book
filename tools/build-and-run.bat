@echo off
setlocal

cd %~dp0..

set rebuild=--all
:parse_args
if "%~1"=="" goto :parse_end
for %%n in ("fast" "--fast" "-f") do if "%~1"==%%n (
  set rebuild=
  shift
  goto :parse_args
)
echo Unknown command '%~1'. Ignoring.
shift
goto :parse_args
:parse_end

if defined rebuild (
  jupyter-book clean . --all
)

jupyter-book build . %rebuild%
call .\_build\html\index.html
