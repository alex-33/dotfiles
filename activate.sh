#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

cd ~
ln -s "$working_dir/$folder/vimrc" .vimrc

cd -
