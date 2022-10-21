#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

echo "make sure, there is no conda environment activated"
brew doctor
brew update
brew outdated
brew upgrade

echo "for zsh update"
omz update
