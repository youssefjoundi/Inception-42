FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server

COPY ./conf/script.sh .

EXPOSE 3306

CMD ["tail", "-f"]
