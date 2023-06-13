#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp --allow-root core install --url=http://localhost/ --title="My WordPress Site" --admin_user=admin --admin_password=password --admin_email=admin@example.com
php-fpm7.3 -F