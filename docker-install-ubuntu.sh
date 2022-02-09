#!/bin/bash
# Usage: docker-install-ubuntu.sh
# Author: Luis Angel Vanegas
# Version: 1.0

# Ubuntu
#---------
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update -y
sudo apt install docker-ce -y
sudo systemctl status docker
sudo usermod -a -G docker $USER
sudo chmod 666 /var/run/docker.sock