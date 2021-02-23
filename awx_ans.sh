sudo apt install -y epel-release
sudo apt remove python-docker-py
sudo apt install -y yum-utils device-mapper-persistent-data lvm2 ansible git python-devel python-pip python-docker-py vim-enhanced
pip install cryptography
pip install jsonschema
pip install docker-compose~=1.23.0
pip install docker –upgrade

#yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo apt install docker-ce -y
systemctl start docker
systemctl enable docker
git clone https://github.com/ansible/awx.git
cd awx/
git clone https://github.com/ansible/awx-logos.git
cd installer/

vi inventory
#awx_official=true
#ansible-playbook -i inventory install.yml -vv
docker ps -a
