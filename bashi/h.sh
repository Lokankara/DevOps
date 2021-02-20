#!/bin/bash
#echo $1 $2 $3

set -e
LOG_F="/tmp/sftp-server-setup_"`date "+%F-%T"`".log"
exec &> >(tee "${LOG_F}")
echo "logging setup to ${LOG_F}"
sudo yum update -y


