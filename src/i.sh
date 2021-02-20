#!/bin/bash
sudo yum update -y
sudo yum install vsftpd -y
sudo systemctl start vsftpd
sudo systemctl enable vsftpd
sudo systemctl stop firewalld
#sudo yum install nano -y
#sudo yum install ftp -y
#sudo yum install bind-utils -y
#sudo yum install net-tools -y
#sudo yum install networt-scripts -y
#sudo yum install epel-release -y
#sudo yum install ansible -y
#sudo yum install java-1.8.0-openjdk.x86_64 -y
#sudo yum install wget -y
#sudo yum install htop -y



#java -version
#date