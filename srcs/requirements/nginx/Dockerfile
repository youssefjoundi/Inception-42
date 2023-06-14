FROM debian:buster

RUN apt-get update

RUN apt-get install -y nginx

COPY ./certificate.crt ./private.key ./

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]
