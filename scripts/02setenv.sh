#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and upgrade brew packages
brew update && brew upgrade

# Install brew packages
echo "Installing brew packages"
# Install and configure git
brew install git
git config --global user.email "andrew.r.valentine@gmail.com"
brew install python
brew install wget
brew install tmux
brew install htop-osx
brew install osxutils
brew tap caskroom/cask

# Install pip packages
echo "Installing pip packages"
# Install csvkit
pip install csvkit

# Install virtualenv and virtualenvwrapper
pip install virtualenv virtualenvwrapper

# Make ENV
source ~/.bash_profile
mkdir -p $WORKON_HOME

# Install The Luggage
echo "Installing The Luggage"

git clone https://github.com/unixorn/luggage.git
cd luggage
make pkg
installer -target / -pkg ./luggage-*.pkg

# Checks if this is a personal or professional machine. If personal, installs software accessible on professional machines via MSC

CN=$(/bin/hostname)
if [[ $CN =~ *".bris.ac.uk"* ]]; then
brew cask install google-chrome
brew cask install atom
brew cask install iterm2
else
echo "Done"
fi
