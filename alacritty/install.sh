#!/usr/bin/env sh

sudo apt install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Rust compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable
$HOME/.cargo/env

# Build Alacritty
mkdir -p tmp
cd tmp
git clone https://github.com/alacritty/alacritty.git
cd alacritty
cargo build --release
sudo cp target/release/alacritty /usr/local/bin
cd ../..
rm -rf tmp

mkdir -p ~/.config/alacritty
ln -fs ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
