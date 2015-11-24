#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and upgrade brew packages
brew update && brew upgrade

# Install python
brew install python

# Install wget
brew install wget

# Install tmux
brew install tmux

# Install virtualenv and virtualenvwrapper
pip install virtualenv virtualenvwrapper

# Make ENV
source ~/.bash_profile
mkdir -p $WORKON_HOME
