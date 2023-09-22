FROM debian:oldstable

RUN apt update && apt upgrade \
    && apt install adminer -y

WORKDIR /usr/share/adminer/

RUN ./compile.php \
    && mv adminer-*.php adminer.php \
    && echo "Alias / /usr/share/adminer/adminer.php" | tee /etc/apache2/conf-available/adminer.conf \
    && a2enconf adminer.conf

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
