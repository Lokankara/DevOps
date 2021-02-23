yum install -y epel-release
yum -y install git gcc gcc-c++ nodejs gettext device-mapper-persistent-data lvm2 bzip2 python-pip
yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce
systemctl enable --now docker.service
pip install docker-compose
git clone --depth 50 https://github.com/ansible/awx.git
cd awx/installer
sed -i 's|admin_password=.*|admin_password=admin@12345|g' inventory
openssl rand -base64 30
sed -i 's|secret_key=.*|secret_key=ejv9P72oNvD4AtWLhOUTvpxfdIfKIid3skwuK+ES|g' inventory
grep -v '^#' inventory | grep -v '^$'
ansible-playbook -i inventory install.yml
docker ps
firewall-cmd --permanent --add-service=http
firewall-cmd --reload
