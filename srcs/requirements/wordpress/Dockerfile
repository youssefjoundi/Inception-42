FROM debian:oldstable


RUN apt-get update

RUN mkdir /run/php/

RUN apt-get install -y php7.4-fpm php7.4-mysql wget curl

WORKDIR /var/www/html

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d

RUN wget -q https://wordpress.org/latest.tar.gz \
    && tar -xzf latest.tar.gz --strip-components=1 \
    && rm latest.tar.gz \
    && curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wp-config.php ./tools/script.sh ./

CMD ["bash", "script.sh"]
