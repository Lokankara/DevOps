#!/bin/bash
#sudo bash f.sh

sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default
sudo echo "anonymous_enable=NO" >> /etc/vsftpd/vsftpd.conf
sudo echo "local_enable=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "chroot_local_user=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "userlist_enable=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "userlist_file=/etc/vsftpd/user_list" >> /etc/vsftpd/vsftpd.conf
sudo echo "userlist_deny=NO" >> /etc/vsftpd/vsftpd.conf
sudo echo "chroot_list_enable=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "chroot_list_file=/etc/vsftpd/chroot_list" >> /etc/vsftpd/vsftpd.conf
sudo echo "pasv_enable=YES" >> /etc/vsftpd/vsftpd.conf
sudo echo "pasv_min_port 10000" >> /etc/vsftpd/vsftpd.conf
sudo echo "pasv_max_port=10001" >> /etc/vsftpd/vsftpd.conf
sudo vi /etc/vsftpd/vsftpd.conf

echo $1 | sudo tee -a /etc/vsftpd/user_list
echo $1 | sudo tee -p /etc/vsftpd/chroot_list

sudo systemctl restart vsftpd


#exit
#ftp 192.168.0.116
