#!/bin/bash
sudo apt update
sudo apt upgrade
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash Anaconda3-2020.11-Linux-x86_64.sh
rm Anaconda3-2020.11-Linux-x86_64.sh
export PATH=~/anconda3/bin:$PATH
jupyter notebook --generate-config
echo c.NotebookApp.ip = "'0.0.0.0'">>.jupyter/jupyter_notebook_config.py
jupyter-notebook

