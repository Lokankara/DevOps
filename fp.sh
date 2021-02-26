export SSHPASS=*,<R#!$(2udw{Zgz
sshpass -e sftp -oBatchMode=no -b testuser@207.244.229.74 << !
   put /root/data_gen.csv
   bye
!