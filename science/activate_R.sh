#!/usr/bin/env bash

brew install R
brew cask install rstudio

# install R packages
function install_R_package {
    if [[ ! -z $2 ]]
    then
        _repo="$2"
    else
        _repo="http://cran.rstudio.com/"
    fi
    R -e "install.packages(\"$1\", repos=\"$_repo\")"
}

install_R_package ROCR
install_R_package ISLR
## generalized (non-)linear models
install_R_package leaps
install_R_package gam
install_R_package glmnet
install_R_package e1071
## trees
install_R_package tree
install_R_package randomForest
install_R_package gbm
install_R_package "shapiro.test"
install_R_package "tidyverse"
