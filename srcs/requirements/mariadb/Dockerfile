FROM debian:buster

RUN apt-get update && apt-get install -y gnupg

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

CMD ["mysqld_safe"]
