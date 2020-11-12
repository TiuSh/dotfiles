#!/usr/bin/env sh

# Font directory
mkdir -p ~/.local/share/fonts/

sudo mkdir -p /opt/nerd-fonts/
sudo chown $USER: /opt/nerd-fonts

cd /opt/nerd-fonts

wget -nc https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hack.zip
unzip -u Hack.zip

mv *.ttf ~/.local/share/fonts/

# Build font information cache files
fc-cache -fv
