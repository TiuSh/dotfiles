#!/usr/bin/env sh

sudo apt update -y
sudo apt upgrade -y

utils/install.sh
zsh/install.sh
xrdb/install.sh
fonts/install.sh
dev/install.sh
neovim/install.sh
docker/install.sh
i3/install.sh
rofi/install.sh
polybar/install.sh
dunst/install.sh
terminal/install.sh
alacritty/install.sh
tmux/install.sh
obs/install.sh
apps/install.sh
.files/install.sh
bin/install.sh

sudo apt autoremove -y
