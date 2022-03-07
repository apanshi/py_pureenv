#!/usr/bin/python3

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
rm -rf get-pip.py
pip3 --version

#sudo apt install python3-pip

wget https://pypi.python.org/packages/45/29/8814bf414e7cd1031e1a3c8a4169218376e284ea2553cc0822a6ea1c2d78/setuptools-36.6.0.zip\#md5\=74663b15117d9a2cc5295d76011e6fd1
sudo unzip setuptools-36.6.0.zip
cd setuptools-36.6.0
python2 setup.py install
cd ../

wget https://pypi.python.org/packages/11/b6/abcb525026a4be042b486df43905d6893fb04f05aac21c32c638e939e447/pip-9.0.1.tar.gz\#md5\=35f01da33009719497f01a4ba69d63c9
sudo tar -zxvf pip-9.0.1.tar.gz
cd pip-9.0.1
sudo python2.7 setup.py install
sudo ln -s /usr/local/python27/bin/pip2.7 /usr/bin/pip2
pip2 --version
cd ..

rm -rf pip-9* setuptools*
