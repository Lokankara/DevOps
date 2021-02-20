sudo yum install epel-release -y
sudo yum update
sudo yum install java-1.8.0-openjdk.x86_64 -y
java -version
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo install net-tools -y
sudo install bind-utils -y
#mcedit /etc/sysconfig/selinux
#setenforce 0
#sudo install networt-scripts -y
date
#systemctl stop firewalld
#systemctl disable firewalld
#rm '/etc/systemd/system/dbus-org.fedoraproject.FirewallD1.service'
#rm '/etc/systemd/system/basic.target.wants/firewalld.service'
#yum install iptables-services
#systemctl enable iptables
#chmod 0740 /etc/iptables.sh
#/etc/iptables.sh
#iptables -L -v -n
#sudo echo "Port 25333" >> /etc/ssh/sshd_config
#sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
#sudo echo "$IPT -A INPUT -i $WAN -p tcp --dport 22 -j ACCEPT" >> /etc/iptables.sh
#sudo systemctl restart sshd
#sudo netstat -tulpn | grep sshd

sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

firewall-cmd --permanent --new-service=jenkins
firewall-cmd --permanent --service=jenkins --set-short="Jenkins Service Ports"
firewall-cmd --permanent --service=jenkins --set-description="Jenkins service firewalld port exceptions"
firewall-cmd --permanent --service=jenkins --add-port=8080/tcp
firewall-cmd --permanent --add-service=jenkins
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --reload
firewall-cmd --list-all