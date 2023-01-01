#!/usr/bin/env sh

# Post install scripts

# n
sudo n latest

# Neovim

# Setup neovim dependencies
pip install neovim
pip3 install neovim

# Update plugins
nvim +PlugInstall +qa
