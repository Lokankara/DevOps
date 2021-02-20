#!/bin/bash
sudo adduser $1
sudo passwd $1
sudo echo $1 | sudo tee -a /etc/vsftpd/user_list
sudo mkdir -p /home/$1/ftp/upload
sudo chmod 550 /home/$1/ftp
sudo chmod 750 /home/$1/ftp/upload
sudo chown -R $1: /home/$1/ftp
htop