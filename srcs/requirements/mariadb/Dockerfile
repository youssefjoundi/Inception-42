FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server vim

COPY ./conf/script.sh .
COPY ./conf/my.cnf /etc/mysql


ENV MYSQL_ROOT_PASSWORD=mysqlpass

RUN chmod +x script.sh
RUN bash script.sh

EXPOSE 3306

CMD ["mysqld" , "--user=root"]
