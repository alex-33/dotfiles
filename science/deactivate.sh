#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

cd $folder/mxnet

rm -rf venv
rm libmxnet.so
make clean

cd -
