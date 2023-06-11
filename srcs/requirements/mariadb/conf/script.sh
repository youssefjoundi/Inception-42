#!/bin/bash

echo "## Start Mysql service....."
service mysql start

mysql -e "FLUSH PRIVILEGES; ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"

echo "## Create Wordpress Database ....."
mysql -e "CREATE DATABASE wordpress;"

echo "## Create User for wordpress database..."
mysql -e "CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspass';"

echo "## Give user privileges to database ..."
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';"

echo "## Run mysql server in foreground"

#Shutdown script
#service mysql stop


#mysqld