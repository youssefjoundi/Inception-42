FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server vim

COPY ./conf/script.sh .

ENV MYSQL_ROOT_PASSWORD=mysqlpass

RUN chmod +x script.sh

EXPOSE 3306

CMD ["bash", "script.sh"]
