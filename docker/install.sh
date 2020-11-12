#!/usr/bin/env sh

sudo apt install -y apt-transport-https ca-certificates gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Run docker as non-root
sudo groupadd docker
sudo usermod -aG docker $(whoami)

# docker-compose
# https://docs.docker.com/compose/install/#install-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.28.6/docker-compose-$(uname -s)-$(uname -m) -o ~/.local/bin/docker-compose
sudo chmod +x ~/.local/bin/docker-compose
