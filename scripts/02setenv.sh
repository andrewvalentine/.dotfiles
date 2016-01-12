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
pip install csvkit
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

# Checks if this is a personal or professional machine. If personal, sets up AutoPkg and installs software

CN=$(/bin/hostname)
USER=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

if [[ $CN =~ *".bris.ac.uk"* ]]; then
echo "Installing AutoPkg"

git clone https://github.com/autopkg/autopkg.git /Users/$USER/Downloads/
/Users/$USER/Downloads/autopkg/Scripts/install.sh
autopkg repo-add hjuutilainen-recipes killahquam-recipes cgerke-recipes rtrouton-recipes
autopkg run GoogleChrome.install Atom.install Slack.install XQuartz.install

else
echo "Work machine - nothing left to do"
fi
