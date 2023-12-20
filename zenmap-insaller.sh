 #!/bin/bash
  2
  3 if [ $UID != 0 ]; then
  4     echo "Error: This script must be run as root"
  5     exit 1
  6 fi
  7
  8 apt-get update && sudo apt-get upgrade
  9 apt-get install -y libssl-dev
 10
 11 if [ $? != 0 ]; then
 12     echo "Error: libssl-dev not installed"
 13     exit 1
 14 fi
 15
 16 git clone https://github.com/nmap/nmap.git && cd nmap && ./configure && make && sudo       make install
 17
 18 echo "Installation Completed Successfully"
 19
 20
 21 echo "nmap"
 22 echo "zenmap"

 echo "now run ./zenmap and ENJOY!!"
