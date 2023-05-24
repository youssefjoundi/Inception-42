FROM debian:latest

RUN apt-get update

RUN mkdir /run/php/

RUN apt-get install -y php-fpm wget

WORKDIR /var/www/html

COPY ./hello.php /var/www/html

RUN wget -q https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz --strip-components=1 \
    && rm latest.tar.gz

# Set permissions
RUN chown -R www-data:www-data /var/www/html && \
    find /var/www/html -type d -exec chmod 755 {} \; && \
    find /var/www/html -type f -exec chmod 644 {} \;

EXPOSE 9000

CMD ["php-fpm7.4", "-F", "-O"]