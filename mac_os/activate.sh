#!/usr/bin/env bash

# show full pathes in Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install coreutils
brew install pkg-config
brew install htop
brew install wget
brew install pandoc
brew cask install iterm2
brew cask install sshfs
brew cask install google-chrome
brew install chrome-cli
brew cask install google-drive
brew cask install transmit
brew cask install spectacle
brew cask install flycut
brew cask install java

brew tap homebrew/versions
brew install gcc49 --enable-cxx
