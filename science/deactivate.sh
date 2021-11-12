#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

conda env remove -n science
