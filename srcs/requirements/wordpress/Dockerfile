FROM debian:buster

RUN apt-get update

RUN mkdir /run/php/

RUN apt-get install -y php7.3-fpm php7.3-mysql wget curl

WORKDIR /var/www/html


COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

RUN wget -q https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz --strip-components=1 \
    && rm latest.tar.gz

COPY ./conf/wp-config.php ./conf/script.sh ./

# Set permissions
RUN chown -R www-data:www-data /var/www/html && \
    find /var/www/html -type d -exec chmod 755 {} \; && \
    find /var/www/html -type f -exec chmod 644 {} \;

# EXPOSE 9000

CMD ["bash", "script.sh"]