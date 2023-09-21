FROM debian:oldstable

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY ./tools/script.sh .
COPY ./conf/my.cnf /etc/mysql

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD


RUN bash script.sh

EXPOSE 3306

CMD ["mysqld" , "--user=root"]
