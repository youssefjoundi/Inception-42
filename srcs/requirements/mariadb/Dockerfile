FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server vim

COPY ./conf/script.sh .
COPY ./conf/my.cnf /etc/mysql

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD


ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
    MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD}

RUN bash script.sh

EXPOSE 3306

CMD ["mysqld" , "--user=root"]
