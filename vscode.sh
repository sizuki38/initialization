#!/bin/sh
sudo apt install -y curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
ls /etc/apt/sources.list.d/
sudo apt install -y apt-transport-https
sudo apt update
apt list code
sudo apt list -a code
sudo apt install -y code
code
