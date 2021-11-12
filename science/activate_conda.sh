#!/usr/bin/env bash
set -x

conda create -n science python=3
conda activate science
pip install -U pip
pip install -r requirements.txt
