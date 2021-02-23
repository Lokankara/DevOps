
#ls
#xterm &
#cat scr.sh
#ls -la
#echo "Done"
#sudo chmod a+x scr.sh

#HOST="192.168.0.103"
#USER="user"
#PWD="1"
#sftp $USER@$HOST <<EOF
#cd /tmp/
#lcd /nome/user/
#get stpd.log log.txt
#EOF

#!/bin/bash
sudo yum update
sudo yum install rsync

HOST="192.168.0.103"
NAME="user"
FILE1="/tmp/*.log"
FILE2="log.txt"
sudo apt-get install ftp
command -v ftp
sudo yum install ftp
command -v ftp
ftp $HOST
ls
get $FILE1
put $FILE1
ls /home/$NAME

#sftp
sftp $HOST
#/home/user/.ssh/known_hosts by default
scp $FILE1 $NAME@$HOST:$FILE2
ls
get $FILE1
$ put $FILE1
ls -l
#scp user@192.168.178.28:file user@192.168.178.27:file
rsync $FILE1 $NAME@$HOST:$FILE2
