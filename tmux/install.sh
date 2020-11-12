#!/usr/bin/env sh

# Install oh my zsh
sudo apt install -y tmux

ln -fs ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# Plugin manager
mkdir -p ~/.tmux/plugins/tpm
