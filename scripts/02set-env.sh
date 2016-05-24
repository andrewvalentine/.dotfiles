#!/bin/bash

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update and upgrade brew packages
brew update && brew upgrade

# Install brew packages
echo "Installing brew packages"

# Install and configure git
brew install git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Install other packages via brew
brew install python
brew install wget
brew install tmux
brew install htop
brew install osxutils
brew install ssh-copy-id
brew install passpie
brew install mas
brew install ranger
brew install peco
brew install macvim --env-std --with-override-system-vim
brew tap caskroom/cask

# Install pip packages
echo "Installing pip packages"
pip install --upgrade pip
pip install csvkit
pip install virtualenv virtualenvwrapper
pip install gitsome

# Commenting out while I mess around with Oh-my-Zsh
# Setup bash-git-prompt
#echo "Setting up bash-git-prompt"
#cd ~
#git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1

# Setup VirtualEnv space
echo "Setting up VirtualEnv"
source ~/.bash_profile
mkdir -p $WORKON_HOME

# Install NODE
echo "Installing Node"
brew install node
npm install password-generator
ln -s ~/node_modules/password-generator/bin/password-generator /usr/local/bin/password-generator

# Install The Luggage
echo "Installing The Luggage"
git clone https://github.com/unixorn/luggage.git ~/Downloads/the-luggage
cd ~/Downloads/the-luggage
make bootstrap_files
cd ~
/bin/rm -rf Downloads/the-luggage

# Install Autopkg
echo "Installing Autopkg"
git clone https://github.com/autopkg/autopkg.git ~/Downloads/autopkg
cd ~/Downloads/autopkg/
sudo /bin/sh Scripts/install.sh
/usr/local/bin/autopkg repo-add recipes timsutton-recipes hjuutilainen-recipes killahquam-recipes cgerke-recipes rtrouton-recipes jleggat-recipes andrewvalentine-recipes scriptingosx-recipes homebysix-recipes arubdesu-recipes eholtham-recipes triti-recipes jaharmi-recipes
/usr/local/bin/autopkg run GoogleChrome.install Atom.install Slack.install XQuartz.install iTerm2.install MunkiAdmin.install SuspiciousPackageApp.install DeployStudioAdmin.install
cd ~
/bin/rm -rf ~/Downloads/autopkg

# Clone my repos
git clone https://github.com/autopkg/andrewvalentine-recipes.git
git clone https://andrewvalentine@bitbucket.org/andrewvalentine/.passpie.git

echo "That's all folks"
