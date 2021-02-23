sudo yum update
sudo yum –y install epel-release
sudo yum –y install gcc dkms make qt libgomp patch
sudo yum –y install kernel-headers kernel-devel binutils glibc-headers glibc-devel font-forge
sudo cd /etc/yum.repo.d/
sudo wget https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.rpm
sudo yum –y localinstall vagrant_2.2.2_x86_64.rpm
Step 4: Verify Installation
vagrant ––version
sudo mkdir ~/vagrant-centos-7
cd ~/vagrant-centos-7
vagrant box add centos/7
touch Vagrantfile
vagrant up