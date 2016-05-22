#!/bin/bash

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/olivierverdier/zsh-git-prompt.git $HOME/.zsh-git-prompt

ln -sF $HOME/.dotfiles/.zshrc $HOME/
