ls
xterm &
cat scr.sh
ls -la
echo "Done"
sudo chmod a+x scr.sh

HOST="192.168.0.103"
USER="user"
PWD="1"
sftp $USER@$HOST <<EOF
cd /tmp/
lcd /nome/user/
get stpd.log log.txt
EOF
