#!/bin/sh

mkdir -p /var/www/html

adduser abrar --disabled-password

echo "abrar:abrar123" | chpasswd 

chown -R abrar:abrar /var/www/html

echo abrar | tee -a /etc/vsftpd.userlist

vsftpd /etc/vsftpd/vsftpd.conf
