#!/usr/bin/env sh

sudo apt install -y python3 python3-distutils python3-testresources

# Install pip
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
rm get-pip.py
