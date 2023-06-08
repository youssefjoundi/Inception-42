#!/bin/bash

echo "## Start Mysql service....."
service mysql start

echo "## Create Wordpress Database ....."
mysql -e "CREATE DATABASE wordpress;"