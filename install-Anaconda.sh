#!/bin/sh
sudo apt update
sudo apt upgrade
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-2020.11-Linux-x86_64.sh
rm Anaconda3-2020.11-Linux-x86_64.sh
echo export PATH=/home/umeda/anaconda3/bin:$PATH
source .bashrc
jupyter notebook --generate-config
echo c.NotebookApp.ip = '0.0.0.0'>>.jupyter/jupyter_notebook_config.py
jupyter-notebook

