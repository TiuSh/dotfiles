#!/usr/bin/env sh

ln -fs ~/.dotfiles/.files/.bash_fzf ~/.bash_fzf
ln -fs ~/.dotfiles/.files/.bash_profile ~/.bash_profile
ln -fs ~/.dotfiles/.files/.bashrc ~/.bashrc
ln -fs ~/.dotfiles/.files/.gitconfig ~/.gitconfig
ln -fs ~/.dotfiles/.files/.gitignore ~/.gitignore
ln -fs ~/.dotfiles/.files/.profile ~/.profile
ln -fs ~/.dotfiles/.files/.xinitrc ~/.xinitrc
ln -fs ~/.dotfiles/.files/ssh-config ~/.ssh/config

cp ~/.dotfiles/.files/.profile.local ~/
cp ~/.dotfiles/.files/.gitconfig.local ~/
