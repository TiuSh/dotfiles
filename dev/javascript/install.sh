#!/usr/bin/env sh

# Node
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# n
sudo npm install -g yarn n

# Optionally
sudo apt remove nodejs
