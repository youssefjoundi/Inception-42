FROM debian:oldoldstable

RUN apt-get update \
    && apt-get install -y nginx \
    && mkdir -p /var/www/website


COPY ./tools/website /var/www/website

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]
