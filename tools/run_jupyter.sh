#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
venv_dir="$SCRIPT_DIR/.venv"
content_dir="$SCRIPT_DIR/content"

if [ -d $venv_dir ]; then
    source $venv_dir/bin/activate
else
    python3 -m venv $venv_dir
    source $venv_dir/bin/activate
    pip3 install -r requirements.txt
fi

jupyter-lab --notebook-dir=$content_dir
source deactivate