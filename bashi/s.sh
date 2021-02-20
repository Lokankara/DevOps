yum clean all
yum install epel-release
yum -y update
yum install libappindicator
wget https://downloads.slack-edge.com/linux_releases/slack-3.3.8-0.1.fc21.x86_64.rpm
sudo yum -y install slack-3.3.8-0.1.fc21.x86_64.rpm


#wget https://downloads.slack-edge.com/linux_releases/slack-4.0.2-0.1.fc21.x86_64.rpm
#sudo yum localinstall ./slack-*.rpm
#cat /etc/yum.repos.d/slack.repo

#yum install epel-release
# yum install gtk3 mesa-libGLU*.i686 mesa-libGLU*.x86_64 libappindicator
# wget https://downloads.slack-edge.com/linux_releases/slack-3.3.8-0.1.fc21.x86_64.rpm
# yum localinstall slack-3.3.8-0.1.fc21.x86_64.rpm
# slack&