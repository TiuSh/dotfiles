#!/usr/bin/env sh

# Github CLI
wget https://github.com/github/hub/releases/download/v2.14.1/hub-linux-amd64-2.14.1.tgz
tar -xzvf hub-linux-amd64-2.14.1.tgz
rm hub-linux-amd64-2.14.1.tgz
sudo ./hub-linux-amd64-2.14.1/install
rm -rf hub-linux-amd64-2.14.1
