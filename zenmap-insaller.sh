#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
nc='\033[0m'

if [ $UID != 0 ]; then
    echo -e "${red} Error: This script must be run as root${nc}"
    exit 1
fi

apt-get update && sudo apt-get upgrade
apt-get install -y libssl-dev

if [ $? != 0 ]; then
    echo -e "${red}Error: libssl-dev not installed${nc}"
    exit 1
fi

git clone https://github.com/nmap/nmap.git && cd nmap && ./configure && make && sudo make install

echo -e "${green}Installation Completed Successfully{nc}"


echo -e "${yellow}cd nmap${nc}"
echo -e "${yellow}cd zenmap${nc}"

echo -e "${red}now run ./zenmap and ENJOY!!${nc}"
