FROM debian:latest

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install adminer -y

WORKDIR /usr/share/adminer/

RUN ./compile.php \
    && mv adminer-*.php adminer.php \
    && echo "Alias /adminer.php /usr/share/adminer/adminer.php" | tee /etc/apache2/conf-available/adminer.conf \
    && a2enconf adminer.conf

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
