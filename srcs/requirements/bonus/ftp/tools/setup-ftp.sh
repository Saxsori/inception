#!/bin/sh

mkdir -p /var/www/html

adduser $FTP_USER --disabled-password

echo "$FTP_USER:$FTP_PASS" | chpasswd 

chown -R $FTP_USER:$FTP_USER /var/www/html

echo $FTP_USER | tee -a /etc/vsftpd.userlist

vsftpd /etc/vsftpd/vsftpd.conf
