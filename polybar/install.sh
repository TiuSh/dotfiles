#!/usr/bin/env sh

# https://github.com/polybar/polybar/wiki/Compiling
sudo apt install -y build-essential cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo apt install -y libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev libuv1-dev

git clone --recursive https://github.com/polybar/polybar ~/.local/lib/polybar
cd ~/.local/lib/polybar

# Compiling
mkdir build
cd build
cmake ..
make -j$(nproc)
# Optional. This will install the polybar executable in /usr/local/bin
sudo make install

rm -rf ~/.local/lib/polybar

mkdir -p ~/.config/polybar

# Link config file
ln -fs ~/.dotfiles/polybar/themes/config-solarized ~/.config/polybar/config


# Download plugins
mkdir -p ~/.local/share/polybar/now_playing
git clone --recursive https://github.com/0nse/now_playing ~/.local/share/polybar/now_playing
