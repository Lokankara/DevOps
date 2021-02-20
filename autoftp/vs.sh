sudo systemctl start vsftpd
sudo systemctl enable vsftpd
sudo systemctl stop vsftpd

sudo firewall-cmd --zone=public --permanent --add-port=21/tcp
sudo firewall-cmd --zone=public --permanent --add-service=ftp
sudo firewall-cmd --reload

sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default

change_config () {grep -q "^$1" /etc/vsftpd/vsftpd.conf && 
sudo sed -i "s/^$1.*/$1=$2/" /etc/vsftpd/vsftpd.conf || 
echo "$1=$2" | sudo tee -a /etc/vsftpd/vsftpd.conf}

change_config anonymous_enable NO
change_config local_enable YES
change_config write_enable YES
change_config chroot_local_user YES
change_config allow_writeable_chroot YES
change_config userlist_enable YES
change_config userlist_file /etc/vsftpd/user_list
change_config userlist_deny NO
change_config chroot_list_enable YES
change_config chroot_list_file /etc/vsftpd/chroot_list
change_config pasv_enable YES
change_config pasv_max_port 10001
change_config pasv_min_port 10000

echo $1 | sudo tee -a /etc/vsftpd/user_list
echo $1 | sudo tee -p /etc/vsftpd/chroot_list

sudo systemctl restart vsftpd

sudo adduser $1
sudo passwd $1
sudo echo $1 | sudo tee -a /etc/vsftpd/user_list
sudo mkdir -p /home/$1/ftp/upload
sudo chmod 550 /home/$1/ftp
sudo chmod 750 /home/$1/ftp/upload
sudo chown -R $1: /home/$1/ftp
htop
ssh $1@$3

#exit
#ftp 192.168.0.116

# sudo echo "anonymous_enable=NO" >> /etc/vsftpd/vsftpd.conf
# sudo echo "local_enable=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "chroot_local_user=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "chroot_list_enable=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "chroot_list_file=/etc/vsftpd/chroot_list" >> /etc/vsftpd/vsftpd.conf
# sudo echo "userlist_enable=YES" >> /etc/vsftpd/vsftpd.conf
# sudo echo "userlist_file=/etc/vsftpd/user_list" >> /etc/vsftpd/vsftpd.conf
# sudo echo "userlist_deny=NO" >> /etc/vsftpd/vsftpd.conf
# sudo vi /etc/vsftpd/vsftpd.conf
