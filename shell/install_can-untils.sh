#!/bin/bash

# install can-utils

git clone https://github.com/linux-can/can-utils.git
cd can-utils
./autogen.sh
./configure
make -j8
sudo make install
