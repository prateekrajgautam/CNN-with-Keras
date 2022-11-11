#!/bin/bash

echo "Hello from docker container"
# apt-get install wget gpg -y
# wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg -y
# install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg -y
# sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
# rm -f packages.microsoft.gpg -y

# apt install apt-transport-https -y
# apt update -y
# apt install code -y
ls
pwd
/bin/bash
jupyter-lab --version
jupyter-lab