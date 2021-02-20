adduser user
passwd
usermod -aG wheel user
sudo echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user
cat /etc/passwd
ls -ls /root
sudo chmod 0440 /etc/sudoers.d/user
sudo chown -R user:user /home/user/.ssh/
#sudo "" | sudo tee -a /etc/vsftpd/vsftpd.conf

