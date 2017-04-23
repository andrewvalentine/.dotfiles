#!/bin/bash

ln -sf $HOME/.dotfiles/.bash_profile $HOME/
ln -sf $HOME/.dotfiles/.bashrc $HOME/
ln -sf $HOME/.dotfiles/.tmux.conf $HOME/
ln -sf $HOME/.dotfiles/.vim $HOME/
ln -sf $HOME/.dotfiles/.cmds $HOME/
ln -sf $HOME/.dotfiles/.zshrc $HOME/
ln -sf $HOME/.dotfiles/.zsh $HOME/

case `uname` in
	Darwin)
sudo mkdir -p /usr/local/sbin
sudo ln -sf /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/sbin/airport
;;
esac
