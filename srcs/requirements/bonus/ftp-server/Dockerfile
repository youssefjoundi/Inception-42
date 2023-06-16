FROM debian:buster

RUN apt-get update \
    && apt-get install -y vsftpd

COPY ./vsftpd.conf /etc/vsftpd.conf


RUN useradd -m ftpuser \
    && echo 'ftpuser:password' | chpasswd \
    && mkdir -p /var/run/vsftpd/empty \
    && echo "ftpuser" >> /etc/vsftpd.chroot_list


# Expose FTP ports
EXPOSE 20 21 21100-21110

# Start vsftpd service
CMD /usr/sbin/vsftpd
