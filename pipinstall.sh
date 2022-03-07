#!/usr/bin/python3

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python2 get-pip.py
sudo python3 get-pip.py

rm -rf get-pip.py

pip --version
