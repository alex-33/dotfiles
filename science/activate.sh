#!/usr/bin/env bash

filepath=$0
initial_folder=`pwd`
science_folder=$initial_folder/$(dirname $filepath)

brew tap homebrew/science

source $science_folder/activate_R.sh
source $science_folder/activate_bio.sh
source $science_folder/activate_python.sh
