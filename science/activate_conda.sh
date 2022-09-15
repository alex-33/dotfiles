#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

conda create -n science python=3
echo "activate conda for your environment (shell), then run ./update_conda.sh"
