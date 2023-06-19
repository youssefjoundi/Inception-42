#!/bin/bash

wp --allow-root config set DB_NAME "'$MYSQL_DATABASE'" --raw
wp --allow-root config set DB_USER "'$MYSQL_USER'" --raw
wp --allow-root config set DB_PASSWORD "'$MYSQL_PASSWORD'" --raw
wp --allow-root config set DB_HOST "'$MY_SQL_HOST'" --raw

wp --allow-root core install --url=http://localhost/ --title="My WordPress Site" \
    --admin_user="$WORDPRESS_ADMIN" --admin_password="$PASSWORD_ADMIN" \
     --admin_email="$EMAIL_ADMIN"


wp --allow-root user create "$WORDPRESS_USER" "$EMAIL_USER" \
   --role=author --user_pass="$PASSWORD_USER"


php-fpm7.3 -F