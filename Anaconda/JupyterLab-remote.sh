#!/bin/sh
sudo apt update
sudo apt -y upgrade
echo c = getconfig"("")">>.jupyter/jupyter_notebook_config.py
echo c.IPKernelApp.pylab = "'"inline"'">>.jupyter/jupyter_notebook_config.py
echo c.NotebookApp.open_browser = False>>.jupyter/jupyter_notebook_config.py
jupyter-lab
