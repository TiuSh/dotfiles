#!/usr/bin/env sh

sudo apt-get install -y rofi
mkdir -p ~/.config/rofi

# Themes
ln -fs ~/.dotfiles/rofi/themes/solarized.rasi ~/.config/rofi/config.rasi
