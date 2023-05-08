#!/bin/bash

# sed -i '/socket/s/^/#/' /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i 's/^#port/port/' /etc/mysql/mariadb.conf.d/50-server.cnf

cp -r /mdlib/* /var/lib/mysql/

service mysql start

# find /

# if ! mysql -u root -e 'use wpdb' ; then
	mysql -e "CREATE DATABASE wpdb;"
	mysql -e "CREATE USER 'abrar'@'%' identified by 'abrar123';"
	mysql -e "GRANT ALL PRIVILEGES ON wpdb.* TO 'abrar'@'%';"
	mysql -e "FLUSH PRIVILEGES;"
# fi

# service mysql stop

# mysqld --console

tail -f /dev/null

# mysqld_safe