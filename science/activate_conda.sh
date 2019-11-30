#!/usr/bin/env bash
set -x

conda create -n science
conda activate science

conda install python
conda config --append channels conda-forge
conda install -c conda-forge jupyterlab
conda install --file conda_requirements.txt

conda install -c conda-forge nodejs
jupyter labextension install @jupyterlab/toc
jupyter labextension install jupyterlab_vim
jupyter labextension install @lckr/jupyterlab_variableinspector
jupyter labextension install @ryantam626/jupyterlab_code_formatter
