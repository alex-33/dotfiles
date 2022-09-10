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
brew install pandoc
brew install ack
brew install gpg
brew install selenium-server-standalone
brew install geckodriver
brew install tor
brew install mysql-connector-c
brew install mysql
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
brew install --cask paintbrush
brew install --cask the-unarchiver
brew install --cask telegram-desktop
# brew install --cask virtualbox
# brew install --cask docker-toolbox
brew install --cask viber
brew install --cask firefox
sudo softwareupdate --install-rosetta
brew install --cask vagrant
vagrant plugin install vagrant-hostmanager
# see https://www.utorrent.com/downloads/mac/
# brew install --cask utorrent
brew install --cask vlc
brew install --cask djview
brew install --cask mysqlworkbench
brew install --cask whatsapp
brew install --cask slack
brew install --cask jupyter-notebook-viewer  # only starting OS X 10.12+
brew install --cask wechat
brew install --cask gimp
brew install --cask chromedriver
brew install --cask weka
brew install --cask miniconda
brew install --cask obs

brew tap microsoft/git
brew install --cask git-credential-manager-core
brew install gh

# brew tap homebrew/versions
# brew install gcc49 --enable-cxx
# brew install gcc@7 --enable-cxx
# brew link gcc@7

/opt/homebrew/bin/conda init zsh
# see changes in $HOME/.zshrc
