#!/usr/bin/env bash

filepath=$0
initial_folder=`pwd`
science_folder=$initial_folder/$(dirname $filepath)

brew tap homebrew/science
brew cask install rstudio
brew install opencv
brew install python
pip install --upgrade pip
pip install -U virtualenv

git submodule update --init --recursive

read -p "please update $science_folder/mxnet/dmlc-core/make/dmlc.mk according to: https://github.com/dmlc/mxnet/issues/1802" yn

cd $science_folder/mxnet
    cp make/osx.mk ./config.mk
    make -j4
    cp lib/libmxnet.so .
cd $initial_folder


cd $science_folder
    virtualenv $science_folder/venv
        source $science_folder/venv/bin/activate
        pip install -U -r requirements.txt
        cd $science_folder/mxnet/python
        python setup.py install
        cd $science_folder
    deactivate
cd $initial_folder
