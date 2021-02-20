set -e
LOG_F="/tmp/sftp-server-setup_"`date "+%F-%T"`".log"
exec &> >(tee "${LOG_F}")
echo "Logging setup to ${LOG_F}"