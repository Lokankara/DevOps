mkdir -p ~/.shh
chmod 700 ~/.ssh
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub user@192.168.0.103
ssh-agent $BASH
ssh-add ~/.ssh/id_rsa

