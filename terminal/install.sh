#!/usr/bin/env sh

sudo apt-get install dconf-cli

# Install solarized color theme
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
./gnome-terminal-colors-solarized/set_dark.sh
rm -rf gnome-terminal-colors-solarized

# Install font
# TODO: Fix this script
# dconf write /org/gnome/terminal/legacy/profiles:/:$(dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -Po "(?<=default=')[^']*")/font  "'Hack Nerd Font 10'"
