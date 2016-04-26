#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

# uninstall zsh
cd ~
unlink .oh-my-zsh/custom/common.zsh
cd -

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"

cd ~
unlink .vim
unlink .vimrc

cd -
