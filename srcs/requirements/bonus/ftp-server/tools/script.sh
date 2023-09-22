#!/bin/bash


useradd -d /home/$FTP_USER $FTP_USER

echo "$FTP_USER:$FTP_PASS" | chpasswd

mkdir -p /var/run/vsftpd/empty

echo $FTP_USER >> /etc/vsftpd.chroot_list

chmod -R 777 /home/$FTP_USER/wp-content/ /home/$FTP_USER/wp-content/*

/usr/sbin/vsftpd