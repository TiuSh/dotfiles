#!/usr/bin/env sh

sudo add-apt-repository -y ppa:kgilmer/speed-ricer
sudo apt-get update -y
sudo apt-get install -y i3-gaps

mkdir -p ~/.config/i3
ln -fs ~/.dotfiles/i3/config ~/.config/i3/config
ln -fs ~/.dotfiles/i3/layouts ~/.config/i3/layouts

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false
# Remove background image
gsettings set org.gnome.desktop.background picture-uri ""
# Set background color
gsettings set org.gnome.desktop.background primary-color "#000000"
