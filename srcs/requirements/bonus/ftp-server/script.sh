#!/bin/bash


useradd -d /home/$FTP_USER $FTP_USER

echo "$FTP_USER:$FTP_PASS" | chpasswd

mkdir -p /var/run/vsftpd/empty

echo $FTP_USER >> /etc/vsftpd.chroot_list

/usr/sbin/vsftpd