# Database info
DB_USER="root"
DB_PASS="zxc6545398"
DB_HOST="127.0.0.1"
# Database array
DB_NAME=("wallet" "admin" "go-admin")
#DB_NAME=("sys")
# Others vars
BIN_DIR="/usr/local/mysql/bin"
#the backup file directory
BCK_DIR="/Users/houzi/home/shell/data/mysql/data-backups"
DATE=`date +%F`
# create file
mkdir $BCK_DIR/$DATE
# TODO
# /usr/bin/mysqldump --opt -ubatsing -pbatsingpw -hlocalhost timepusher > /mnt/mysqlBackup/db_`date +%F`.sql
for var in ${DB_NAME[@]};
do
  mysqldump -u$DB_USER -p$DB_PASS -h$DB_HOST $DB_NAME > $BCK_DIR/$DATE/db_$var.sql
done
