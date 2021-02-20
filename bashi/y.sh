yum update
yum install mc
yum install git
yum install ftp
yum install vsftpd -y

sudo systemctl start vsftpd
sudo systemctl enable vsftpd
sudo firewall-cmd --zone=public --permanent --add-port=21/tcp
sudo firewall-cmd --zone=public --permanent --add-service=ftp
sudo firewall-cmd –-reload
#sudo cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default

#sudo echo "anonymous_enable=NO" >> /etc/vsftpd/vsftpd.conf
#sudo echo "local_enable=YES" >> /etc/vsftpd/vsftpd.conf
#sudo echo "write_enable=YES" >> /etc/vsftpd/vsftpd.conf
#sudo echo "chroot_local_user=YES" >> /etc/vsftpd/vsftpd.conf
#sudo echo "allow_writeable_chroot=YES" >> /etc/vsftpd/vsftpd.conf

#sudo echo "chroot_list_enable=YES" >> /etc/vsftpd/vsftpd.conf
#sudo echo "chroot_list_file=/etc/vsftpd/chroot_list" >> /etc/vsftpd/vsftpd.conf

#sudo echo "userlist_enable=YES" >> /etc/vsftpd/vsftpd.conf
#sudo echo "userlist_file=/etc/vsftpd/user_list" >> /etc/vsftpd/vsftpd.conf
#sudo echo "userlist_deny=NO" >> /etc/vsftpd/vsftpd.conf

sudo systemctl restart vsftpd
sudo adduser test
sudo passwd test
sudo echo "test" | sudo tee –a /etc/vsftpd/user_list
sudo mkdir –p /home/test/ftp/upload
sudo chmod 550 /home/test/ftp
sudo chmod 750 /home/test/ftp/upload
sudo chown –R testuser: /home/test/ftp
ftp 192.168.0.103