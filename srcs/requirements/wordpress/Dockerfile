FROM debian:oldstable

RUN apt-get update \
    && mkdir /run/php/ \
    && apt-get install -y php7.4-fpm php7.4-mysql wget curl vim

WORKDIR /var/www/html

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN wget -q https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz --strip-components=1 \
    && rm latest.tar.gz \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp-config.php ./conf/script.sh ./

EXPOSE 9000

CMD ["bash", "script.sh"]