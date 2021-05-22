#!/usr/bin/env sh

# Post install scripts

# n
sudo n latest

# Neovim

# Setup neovim dependencies
python -m pip install neovim
python3 -m pip install neovim

# Update plugins
nvim +PlugInstall +qa
