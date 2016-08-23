#!/usr/bin/env bash

filepath=$0
initial_folder=`pwd`
science_folder=$initial_folder/$(dirname $filepath)

# install mxnet for DNN
brew install opencv
brew install python
brew install graphviz

pip install --upgrade pip
pip install -U virtualenv

git submodule update --init --recursive

echo "please update $science_folder/mxnet/dmlc-core/make/dmlc.mk according to: https://github.com/dmlc/mxnet/issues/1802"
read -p "press any button when complete ... " yn

cd $science_folder/mxnet
    cp make/osx.mk ./config.mk
    make -j4
    cp lib/libmxnet.so .
cd $initial_folder


cd $science_folder
    virtualenv venv
        source venv/bin/activate
        pip install -U -r requirements.txt
        cd mxnet/python
        python setup.py install
        cd $science_folder
        ln -s /usr/local/lib/python2.7/site-packages/cv2.so venv/lib/python2.7/site-packages/cv2.so
    deactivate
cd $initial_folder
