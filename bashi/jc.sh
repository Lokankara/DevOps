sudo systemctl stop jenkins.service
sudo systemctl restart jenkins.service
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war
java -jar jenkins.war
sudo cp jenkins.war /usr/local/bin/jenkins.war

cd /etc/systemd/system/
 
echo "

/usr/local/bin/jenkins.war
[Unit]
Description=Jenkins Service
After=network.target

[Service]
Type=simple
User=root
ExecStart=/usr/bin/java -jar /usr/local/bin/jenkins.war
Restart=on-abort

[Install]
WantedBy=multi-user.target
" >> jenkins.service

sudo systemctl daemon-reload
sudo systemctl start jenkins.service
sudo systemctl status jenkins.service

#Loaded: loaded (/etc/systemd/system/jenkins.service; disabled)
sudo systemctl restart jenkins.service