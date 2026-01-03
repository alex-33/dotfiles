#!/usr/bin/env bash
set -x
# https://web.archive.org/web/20110314180918/http://www.davidpashley.com/articles/writing-robust-shell-scripts.html
set -e

# show full pathes in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/aadral/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install coreutils
brew install pkg-config
brew install vim
brew install htop
brew install wget
brew install ack
brew install gpg
brew install selenium-server-standalone
brew install geckodriver
brew install tor
brew install mysql-connector-c
brew install mysql
brew install redis
# brew install mariadb  # in this case you have to 'brew unlink mysql' as they use the same binaries
brew install python3
brew install grafana
brew install media-info
brew install tree
brew install libomp
brew install tmux
brew install shyaml
brew install gdrive
brew install telegraf
brew install hey
brew install workflowy
brew install jq
brew install qrencode
brew install ffmpeg
brew install graphviz
brew install uv

# pdf tooling
brew install pandoc
brew install --cask wkhtmltopdf
brew install tidy-html5
brew install --cask miktex-console

# Big Data
brew install openjdk@11  # compatible with PySpark 3.4.1
# echo "export JAVA_HOME=`/usr/libexec/java_home -v 11`" >> ~/.zshrc
# see also: https://medium.com/@manvendrapsingh/installing-many-jdk-versions-on-macos-dfc177bc8c2b

# used to build some visulization python packages
brew install yarn
brew install node

brew install --cask iterm2
# brew install --cask macfuse
# brew install sshfs
brew install --cask google-chrome
brew install chrome-cli
brew install --cask google-drive
brew install --cask transmit
brew install --cask spectacle
brew install --cask flycut
brew install java
# see https://stackoverflow.com/a/65601197
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install --cask paintbrush
brew install --cask the-unarchiver
# brew install --cask virtualbox
# brew install --cask docker-toolbox
brew install --cask firefox
brew install --cask tor-browser

sudo softwareupdate --install-rosetta
brew install --cask vagrant
vagrant plugin install vagrant-hostmanager
brew install --cask webtorrent
brew install --cask vlc
brew install --cask djview
brew install --cask mysqlworkbench
brew install --cask db-browser-for-sqlite
brew install --cask jupyter-notebook-viewer  # only starting OS X 10.12+
brew install --cask gimp
brew install --cask chromedriver
brew install --cask weka
brew install --cask miniconda
# Camtasia old license is only applicable to old versions:
# http://www.techsmith.com/download/licenses/camtasia.asp?ver=9
# compatibility: https://support.techsmith.com/hc/en-us/articles/219910027
# upgrade: https://www.techsmith.com/store/camtasia/upgrade
# brew install --cask camtasia
brew install --cask obs
brew install --cask spotify
brew install --cask drawio
brew install --cask pycharm-ce
brew install --cask vscodium
brew install --cask android-file-transfer
brew install --cask qlmarkdown
brew install --cask wpsoffice
brew install ollama
brew install --cask anythingllm
# brew install loom
brew install minio-mc
brew install --cask yandex-music

# install messengers
brew install --cask discord
brew install --cask slack
brew install --cask telegram-desktop
brew install --cask viber
brew install --cask wechat
brew install --cask whatsapp
brew install zoom
brew install --cask skype-for-business

brew install qpdf
brew install imagemagick
brew install curl
brew link curl --force

brew tap microsoft/git
# brew install --cask git-credential-manager-core  -- deprecated
brew install --cask git-credential-manager
brew install gh

# required from python science packages:
brew install cmake
brew install gdal  # to work with geospatial data

/opt/homebrew/bin/conda init zsh
# see changes in $HOME/.zshrc
