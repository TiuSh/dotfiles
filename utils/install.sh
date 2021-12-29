#!/usr/bin/env sh

# Utils
sudo apt install -y apt-transport-https curl wget git htop bmon iftop xclip jq pavucontrol silversearcher-ag ripgrep unzip keychain libnotify-bin imagemagick

# Setup max watches
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
