FROM debian:buster

RUN apt-get update

RUN apt-get install -y nginx openssl

COPY ./conf/create_certif.sh ./

RUN bash create_certif.sh

COPY ./conf/default /etc/nginx/sites-available

CMD ["nginx", "-g", "daemon off;"]


