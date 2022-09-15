#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

filepath=$0
initial_folder=`pwd`
science_folder=$initial_folder/$(dirname $filepath)

brew install python3
pip install --upgrade pip

brew install miniconda
source $science_folder/activate_conda.sh
