FROM debian:oldstable

RUN apt-get update \
    && apt-get install -y vsftpd

COPY ./vsftpd.conf /etc/vsftpd.conf


COPY ./script.sh ./

# Expose FTP ports
EXPOSE 21

# Start vsftpd service
CMD ["bash", "script.sh"]
