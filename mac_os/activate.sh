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

brew tap homebrew/versions
brew install gcc49 --enable-cxx
