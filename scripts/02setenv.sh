#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and upgrade brew packages
brew update && brew upgrade

# Install brew packages
echo "Installing brew packages"
# Install git
brew install git

# Install python
brew install python

# Install wget
brew install wget

# Install tmux
brew install tmux

# Install htop
brew install htop-osx

# Install osxutils

brew install osxutils

# Install pip packages
echo "Installing pip packages"
# Install csvkit
pip install csvkik

# Install virtualenv and virtualenvwrapper
pip install virtualenv virtualenvwrapper

# Make ENV
source ~/.bash_profile
mkdir -p $WORKON_HOME
