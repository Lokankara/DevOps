#!/bin/bash
nmcli
bash a.sh user
bash i.sh
bash f.sh
bash vs.sh user 10.0.3.15
bash at.sh test
bash py.sh

#bash j.sh
#bash jc.sh
#ssh user0@168.168.0.116

touch /tpm/log/vsftpd.log && chmod 600 /var/log/vsftpd.log
 
systemctl enable vsftpd
systemctl start vsftpd
netstat -tulnp | grep vsftpd

tcp 0 0 0.0.0.0:21 0.0.0.0:* LISTEN 10000/vsftpd
bash log.sh