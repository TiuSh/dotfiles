#!/usr/bin/env sh

sudo apt install -y dunst

mkdir -p ~/.config/dunst
ln -fs ~/.dotfiles/dunst/themes/dunstrc-solarized ~/.config/dunst/dunstrc
