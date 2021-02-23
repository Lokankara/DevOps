apt-get update
apt-get install apt-transport-https wget gnupg python3 python3-pip python-dev tree libpq-dev
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
pip3 install ansible
apt-get install docker.io
apt-get install npm
npm install npm --global
reboot
pip3 install docker-compose
mkdir /downloads
cd /downloads
git clone https://github.com/ansible/awx.git
cd /downloads/awx/installer
ansible-playbook -i inventory install.yml
