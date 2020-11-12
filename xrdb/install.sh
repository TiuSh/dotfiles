#!/usr/bin/env sh

# Link config files
ln -fs ~/.dotfiles/xrdb/.Xresources ~/.Xresources
# urxvt looks for .Xdefaults instead of Xresources
ln -fs ~/.dotfiles/xrdb/.Xresources ~/.Xdefaults
