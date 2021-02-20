#!/bin/bash

sudo adduser $1
sudo passwd $1
sudo usermod -aG wheel $1
sudo echo "$1 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$1
#sudo echo "$1 ALL=(ALL) NOPASSWD:ALL" | sudo EDITOR= "tee -a" visudo

sudo cat /etc/passwd
sudo ls -ls /root

sudo chmod 0440 /etc/sudoers.d/$1
sudo chown -R $1:$1 /home/$1/.ssh/