!#bin/bash

sudo apt-get install -y -f openssl libssl-dev
sudo apt-get install -y -f libiodbc2 libiodbc2-dev
sudo apt-get install -y -f mysql-client

mkdir -p ~/tmp/poco

cd ~/tmp/poco/

wget https://pocoproject.org/releases/poco-1.7.8/poco-1.7.8p3-all.tar.gz

tar -xvf poco-1.7.8p3-all.tar.gz

cd poco-1.7.8p3-all

mkdir cmake_build
cd cmake_build

cmake ..
make
sudo make install

rm -rf ~/tmp/poco
