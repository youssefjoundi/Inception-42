FROM debian:buster

RUN apt-get update \
    && apt-get install -y vsftpd

COPY ./vsftpd.conf /etc/vsftpd.conf


COPY ./script.sh ./

# Expose FTP ports
EXPOSE 20 21 21100-21110

# Start vsftpd service
CMD ["bash", "script.sh"]
