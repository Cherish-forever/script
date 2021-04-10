#!/bin/bash

# install can-utils
git clone https://github.com/linux-can/can-utils.git /tmp/can-utils
cd /tmp/can-utils && ./autogen.sh && ./configure && make -j8 && sudo make install
