!#bin/bash

mkdir -p ~/tmp/msgpack
cd ~/tmp/msgpack

git clone https://github.com/msgpack/msgpack-c.git

cd msgpack-c

mkdir cmake_build

cd cmake_build

cmake -DMSGPACK_CXX11=ON ..

make

sudo make install

rm -rf ~/tmp/msgpack