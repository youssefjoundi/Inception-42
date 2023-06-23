FROM debian:oldstable

COPY ./conf/create_certif.sh ./

RUN apt-get update \
    && apt-get install -y nginx openssl \
    && bash create_certif.sh \
    && mkdir /var/www/website

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]


