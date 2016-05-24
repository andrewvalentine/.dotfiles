#!/bin/bash

git clone https://github.com/olivierverdier/zsh-git-prompt.git $HOME/.zsh-git-prompt

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ln -sF $HOME/.dotfiles/.zshrc $HOME/
