#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

source ~/.bash_profile
conda activate science
pip install -U pip
pip install -r requirements.txt
