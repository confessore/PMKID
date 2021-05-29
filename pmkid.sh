#!/bin/bash

sudo apt update
sudo apt install -y libcurl4-openssl-dev libssl-dev zlib1g-dev libpcap-dev
sudo apt remove hashcat
git clone https://github.com/hashcat/hashcat
cd hashcat
git submodule update --init
sudo make
sudo make install
cd ..
git clone https://github.com/zerbea/hcxtools
cd hcxtools
sudo make
sudo make install
cd ..
git clone https://github.com/zerbea/hcxdumptool
cd hcxdumptool
sudo make
sudo make install
cd ..
