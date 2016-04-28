#!/usr/bin/env bash

brew tap homebrew/science
brew install opencv
brew install python

git submodule update --init --recursive

cd science/mxnet
cp make/osx.mk ./config.mk
make -j4
cd -
