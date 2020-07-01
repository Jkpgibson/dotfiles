#!/bin/bash

#ensure at home
cd ~

#hosts files
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-porn/hosts 
sudo su
cat ./hosts >> /etc/hosts
exit
