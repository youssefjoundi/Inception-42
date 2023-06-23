FROM debian:oldstable

RUN apt-get update

RUN apt-get install -y nginx openssl

COPY ./conf/create_certif.sh ./

RUN bash create_certif.sh \
    && mkdir /var/www/website

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]


