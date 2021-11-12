#!/usr/bin/env bash

filepath=$0
initial_folder=`pwd`
science_folder=$initial_folder/$(dirname $filepath)

brew install python
pip install --upgrade pip

brew install miniconda
source $science_folder/activate_conda.sh
