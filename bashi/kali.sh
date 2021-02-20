#git clone https://github.com/PolyakPavlo/DevOps.git
#sudo apt-get install vimf
#vimf
wget  ~/mc.deb
echo "
deb http://ftp.debian.org/debian/ stable main contrib non-free
deb http://ftp.de.debian.org/debian jessie main
" >> /etc/apt/sources.list

sudo dpkg -i install http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.21-1_amd64.deb
sudo apt-get -f install

sudo dpkg -i install http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc-data_4.8.21-1_all.deb
sudo apt-get -f install

sudo gdebi http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.21-1_amd64.deb
sudo gdebi http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc-data_4.8.21-1_all.deb
apt-get update
apt-get install mc

sudo apt install http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc_4.8.21-1_amd64.deb
sudo apt install http://archive.ubuntu.com/ubuntu/pool/universe/m/mc/mc-data_4.8.21-1_all.deb

apt-get update
apt-get install mc
sudo add-apt-repository universe
sudo apt update
mc
sudo add-apt-repository ppa:far2l-team/ppa
sudo apt-get update
sudo apt-get install far2l


sudo add-apt-repository ppa:sicklylife/doublecmd
sudo apt-get update
sudo apt-get install doublecmd-gtk
sudo apt-get install doublecmd-qt

/sftp://user@192.168.0.104/home/ftp
/sftp://root@192.168.0.103/root

#https://launcher.mojang.com/download/Minecraft.deb
# wget  ~/Minecraft.deb
# sudo apt install gdebi-core
# sudo gdebi ~/Minecraft.deb
# glxgears
# ./minecraft-launcher
# sudo snap install minecraft-launcher-ot
