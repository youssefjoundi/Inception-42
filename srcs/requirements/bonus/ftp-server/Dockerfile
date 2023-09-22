FROM debian:oldstable

RUN apt-get update \
    && apt-get install -y vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd.conf


COPY ./tools/script.sh ./

EXPOSE 21

CMD ["bash", "script.sh"]
