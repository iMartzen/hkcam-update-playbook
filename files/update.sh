#!/bin/bash

GET_URL="$(curl -s https://api.github.com/repos/brutella/hkcam/releases/latest | grep \"browser_download_url.*gz\" | cut -d '"' -f 4)"
LATEST="$(curl -s https://api.github.com/repos/brutella/hkcam/releases/latest | grep "browser_download_url.*gz" | cut -d '"' -f 4 | cut -d "/" -f 8)"

#TODO - compare with recent version, when it is the same tell that. 

wget $GET_URL
tar -xvf hkcam-${LATEST}_linux_armhf.tar.gz
sudo sv stop hkcam
sudo cp hkcam-${LATEST}_linux_armhf/usr/bin/hkcam /usr/bin
sudo sv start hkcam