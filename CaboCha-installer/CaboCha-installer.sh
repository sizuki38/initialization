#!/bin/sh
tar zxvf CRF++-0.58.tar.gz
cd CRF++-0.58
./configure
make
sudo make install
cd ..
bzip2 -dc cabocha-0.69.tar.bz2 | tar xvf -
cd cabocha-0.69
./configure --with-mecab-config=`which mecab-config` --with-charset=UTF8
make
make check
sudo make install
cd python
sudo python3 setup.py install
cd ../..
