#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

git submodule init
git submodule update

cd ~
rm -r .vim
ln -si "$working_dir/$folder/vim" .vim
ln -si "$working_dir/$folder/vimrc" .vimrc

# initialize Vim plugins
vim +PluginInstall +qall

cd -
