#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

git submodule init
git submodule update

# install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# have to call ./activate.sh twice =(

cd ~
rm -r .vim
ln -si "$working_dir/$folder/vim" .vim
ln -si "$working_dir/$folder/vimrc" .vimrc

# initialize Vim plugins
vim +PluginInstall +qall

cd -

cd ~
echo "trying to setup personal .zshrc ..."
ln -si "$working_dir/$folder/zshrc" .oh-my-zsh/custom/common.zsh
echo $'\360\237\215\251' " [DONE]"
cd -
