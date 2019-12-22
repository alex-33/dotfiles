#!/usr/bin/env bash

# show full pathes in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
brew install mysql@5.5
brew install python3
brew install grafana
brew install media-info
brew install tree
brew install libomp
brew install tmux
brew install shyaml

brew cask install iterm2
brew cask install sshfs
brew cask install google-chrome
brew install chrome-cli
brew cask install google-drive
brew cask install transmit
brew cask install spectacle
brew cask install flycut
brew cask install java
brew cask install paintbrush
brew cask install the-unarchiver
brew cask install telegram-desktop
brew cask install docker-toolbox
brew cask install viber
brew cask install firefox
brew cask install vagrant
vagrant plugin install vagrant-hostmanager
brew cask install utorrent
brew cask install vlc
brew cask install djview
brew cask install mysqlworkbench
brew cask install tunnelblick
brew cask install whatsapp
brew cask install tunnelbear
brew cask install slack
brew cask install jupyter-notebook-viewer  # only starting OS X 10.12+
brew cask install bluej
brew cask install eclipse-java
brew cask install wechat
brew cask install gimp
brew cask install chromedriver
# as soon as we install miniconda we have no need to install anaconda
# brew cask install anaconda
brew cask install weka
brew cask install miniconda
/usr/local/miniconda3/bin/conda init zsh
# see changes in $HOME/.zshrc
brew cask install virtualbox

brew tap homebrew/versions
brew install gcc49 --enable-cxx
brew install gcc@7 --enable-cxx
brew link gcc@7
