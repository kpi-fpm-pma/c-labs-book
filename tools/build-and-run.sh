#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR/..

rebuild="--all"
while [[ $# -ge 0 ]];
do
  case "$1" in
    fast | --fast | -f) 
      rebuild=
      shift
      ;;
    *)
      printf "Unknown command '%s'. Ignoring.\n" $0
      shift
      ;;
  esac
done

if [ ! -z "$rebuild" ]; then
  jupyter-book clean . --all
fi

jupyter-book build . $rebuild
xdg-open ./_build/index.html
