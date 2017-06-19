#!/bin/bash

# Make sure we're in $HOME
cd $HOME

# Install VimPlug
echo "Installing VimPlug..."
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

case `uname` in
	Darwin)

echo "Darwin kernel detected." 
sleep 2

# Install brew
echo "Installing/updating brew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

# Install brew packages
echo "Installing brew packages..."

# Install git via brew
brew install git

# Configure git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global core.excludesfile $HOME/.gitignore
echo .DS_Store >> $HOME/.gitignore

# Install other packages via brew
brew install \
	python \
	wget \
	tmux \
	htop \
	passpie \
	sf-pwgen \
	zsh \
	zsh-syntax-highlighting \
	vim --env-stf --with-override-system-vim \
	diff-so-fancy \
	diffoscope \
	ripgrep \
	ranger \
	nmap \
	cmus

brew tap caskroom/cask

# Install pip packages
echo "Installing pip packages..."
pip install --upgrade pip setuptools
pip install csvkit
pip install virtualenv virtualenvwrapper
pip install ipython

# Setup VirtualEnv space
echo "Setting up VirtualEnv..."
source $HOME/.bash_profile
mkdir -p $WORKON_HOME

# Clone my repos
echo "Cloning personal repos..."
git clone https://github.com/autopkg/andrewvalentine-recipes.git $HOME/repos/andrewvalentine-recipes
git clone git@bitbucket.org:andrewvalentine/.passpie.git

# Set shell to brew zsh
echo "Setting shell to zsh..."
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

# Clone zsh-git-prompt
echo "Setting up zsh-git-prompt..."
git clone https://github.com/olivierverdier/zsh-git-prompt.git $HOME/.zsh/zsh-git-prompt

# Setup diff-so-fancy
echo "Setting up diff-so-fancy..."
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

;;
	Linux)

echo "Linux kernel detected."
sleep 2

# Install pip
echo "Installing pip..."
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user

# Setup zsh-syntax-highlighting
echo "Setting zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.local/zsh-syntax-highlighting

# Set zsh-git-prompt
echo "Setting up zsh-git-prompt..."
git clone https://github.com/olivierverdier/zsh-git-prompt.git $HOME/zsh/zsh-git-prompt

# Setup diff-so-fancy
echo "Setting up diff-so-fancy..."
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/diff-so-fancy --output $HOME/.local/bin/diff-so-fancy --create-dirs
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/diff-highlight/diff-highlight --output $HOME/.local/bin/diff-highlight
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/lib/diff-so-fancy.pl --output $HOME/.local/bin/lib/diff-so-fancy.pl --create-dirs

chmod +x \
	$HOME/.local/bin/diff-so-fancy \
	$HOME/.local/bin/diff-highlight \
	$HOME/.local/bin/lib/diff-so-fancy.pl

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

;;
esac
echo "That's all folks"
