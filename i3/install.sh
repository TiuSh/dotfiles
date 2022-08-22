#!/usr/bin/env sh

sudo apt install -y i3

# Build i3-gaps
sudo apt install -y meson asciidoc libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake libxcb-xrm-dev libxcb-shape0-dev pkg-config
mkdir -p tmp/build
cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
meson -Ddocs=true -Dmans=true ../build
meson compile -C ../build
sudo meson install -C ../build
cd ../..
rm -rf tmp

mkdir -p ~/.config/i3
ln -fs ~/.dotfiles/i3/config ~/.config/i3/config
ln -fs ~/.dotfiles/i3/layouts ~/.config/i3/layouts

# https://faq.i3wm.org/question/1/how-can-i-get-rid-of-the-nautilus-desktop-window.1.html
gsettings set org.gnome.desktop.background show-desktop-icons false
# Remove background image
gsettings set org.gnome.desktop.background picture-uri ""
# Set background color
gsettings set org.gnome.desktop.background primary-color "#000000"
