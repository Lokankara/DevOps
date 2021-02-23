#!/bin/bash
set -e
LOG_F="/tmp/sftp_"`date "+%F-%T"`".log"
exec &> >(tee "$LOG_F")
sudo chmod a+x get.sh
#tar cvf log.tar /tmp/
#pwd
#ls -l
HOST="192.168.0.103"
USER="user"
PWD="1"
sftp $USER@$HOST <<EOF
ls -l
lcd /home/user/
get $LOG_F logs.txt
EOF
