#!/bin/bash

# Make sure we're in $HOME
cd $HOME

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

case `uname` in
	Darwin)

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
brew install peco
brew install sf-pwgen
brew install zsh
brew install zsh-syntax-highlighting
brew install macvim --env-std --with-override-system-vim
brew tap caskroom/cask

# Install pip packages
echo "Installing pip packages"
pip install --upgrade pip
pip install csvkit
pip install virtualenv virtualenvwrapper
pip install gitsome
pip install ipython

# Setup VirtualEnv space
echo "Setting up VirtualEnv"
source ~/.bash_profile
mkdir -p $WORKON_HOME

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
/usr/local/bin/autopkg run GoogleChrome.install Slack.install XQuartz.install iTerm2.install MunkiAdmin.install SuspiciousPackageApp.install DeployStudioAdmin.install
cd ~
/bin/rm -rf ~/Downloads/autopkg

# Clone my repos
git clone https://github.com/autopkg/andrewvalentine-recipes.git
git clone git@bitbucket.org:andrewvalentine/.passpie.git
git clone git clone git@bitbucket.org:andrewvalentine/.todolist.git

# Set shell to brew zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Clone zsh-git-prompt
git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/zsh-git-prompt

;;
	Linux)

# Install pip
echo "Installing pip"
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user

# Setup zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.local/zsh-syntax-highlighting

# Set zsh-git-prompt
git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/zsh-git-prompt
;;
esac
echo "That's all folks"
