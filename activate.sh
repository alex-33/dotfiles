#!/usr/bin/env bash

filepath=$0
folder=$(dirname $filepath)
binary=$(basename $filepath)
working_dir=`pwd`

git submodule init
git submodule update

# install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# you need to exit after installation from child shell created

cd ~
rm -r .vim
ln -si "$working_dir/$folder/vim" .vim
ln -si "$working_dir/$folder/vimrc" .vimrc
ln -si "$working_dir/$folder/gitignore" .gitignore
git config --global core.excludesfile '~/.gitignore'

# initialize Vim plugins
vim +PluginInstall +qall

cd -

cd ~
echo "setting up personal .zshrc ..."
ln -si "$working_dir/$folder/zshrc" .oh-my-zsh/custom/common.zsh
echo $'\360\237\215\251' " [DONE]"
cd -
