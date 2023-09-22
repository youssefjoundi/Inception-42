FROM debian:oldoldstable

RUN apt-get update \
    && apt-get install -y nginx


COPY ./tools/* /var/www/html

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]