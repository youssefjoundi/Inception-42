FROM debian:oldstable

RUN apt-get update && \
    apt-get install -y nginx openssl

COPY ./conf/create_certif.sh ./

ARG SITE_HOSTNAME

ENV SITE_HOSTNAME=${SITE_HOSTNAME}

RUN bash create_certif.sh \
    && mkdir /var/www/website

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]


