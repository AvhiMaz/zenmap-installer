#!/bin/bash

if[[$UID != 1000]]
then
    echo "Error: This script must be run as root"
    exit 1
fi
apt-get update && sudo apt-get upgrade
apt-get install libssl-dev

if[[$? != 0]]
then
    echo "Error: libssl-dev not installed"
    exit 1
fi

git clone https://github.com/nmap/nmap.git && cd nmap && ./configure && make && sudo make install

cd nmap
cd zenmap

echo "Installation Completed Successfully""
./zenmap

