#!/bin/bash

echo "## Start Mysql service....."
service mysql start

# Wait for the MySQL service to start
sleep 1

# Set password to the root
mysql -e "FLUSH PRIVILEGES; ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'"

echo "## Create Wordpress Database ....."
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE wordpress;"

echo "## Create User for wordpress database..."
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'wordpresspass';"

echo "## Give user privileges to database ..."
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';"

#Shut dowm mysql
mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown


