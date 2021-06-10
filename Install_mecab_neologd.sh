#!/bin/sh
sudo apt update
sudo apt upgrade
sudo apt-get install mecab libmecab-dev mecab-ipadic
git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git
sudo apt-get install make
sudo aot install --reinstall build-essential 
cd mecab-ipadic-neologd
./bin/install-mecab-ipadic-neologd
cp -r /usr/lib/x86usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd/ /mnt/c/neologd

