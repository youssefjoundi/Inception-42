FROM debian:buster

RUN apt-get update

RUN apt-get install -y nginx

COPY ./conf/nginx.conf /etc/nginx

CMD ["nginx", "-g", "daemon off;"]
