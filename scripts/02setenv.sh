#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and upgrade brew packages
brew update && brew upgrade

# Install brew packages
echo "Installing brew packages"
# Install and configure git
brew install git
git config --global user.name "Andrew Valentine"
git config --global user.email "andrew.r.valentine@gmail.com"
brew install python
brew install wget
brew install tmux
brew install htop
brew install osxutils
brew install ssh-copy-id
brew install passpie
brew tap caskroom/cask

# Install pip packages
echo "Installing pip packages"
pip install --upgrade pip
pip install csvkit
pip install virtualenv virtualenvwrapper

# Make ENV
source ~/.bash_profile
mkdir -p $WORKON_HOME

# Install The Luggage
echo "Installing The Luggage"

git clone https://github.com/unixorn/luggage.git ~/Downloads/the-luggage
cd ~/Downloads/the-luggage
make bootstrap_files
cd ~
/bin/rm -rf Downloads/the-luggage

# Checks if this is a personal or professional machine. If personal, sets up AutoPkg and installs software

#CN=$(/bin/hostname)
#USER=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

#if [[ $CN =~ *".bris.ac.uk"* ]]; then
echo "Installing Autopkg!"

git clone https://github.com/autopkg/autopkg.git ~/Downloads/autopkg
cd ~/Downloads/autopkg/
sudo /bin/sh Scripts/install.sh
/usr/local/bin/autopkg repo-add recipes timsutton-recipes hjuutilainen-recipes killahquam-recipes cgerke-recipes rtrouton-recipes jleggat-recipes andrewvalentine-recipes scriptingosx-recipes homebysix-recipes arubdesu-recipes eholtham-recipes triti-recipes jaharmi-recipes
/usr/local/bin/autopkg run GoogleChrome.install Atom.install Slack.install XQuartz.install iTerm2.install MunkiAdmin.install SuspiciousPackageApp.install DeployStudioAdmin.install
cd ~
/bin/rm -rf ~/Downloads/autopkg

echo "Installing Atom packages"

/usr/local/bin/apm install script

echo "That's all folks"
#else
#echo "Work machine - nothing left to do"
#fi
