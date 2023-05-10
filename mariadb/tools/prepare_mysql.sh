#!/bin/bash

# sed -i '/socket/s/^/#/' /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i 's/^#port/port/' /etc/mysql/mariadb.conf.d/50-server.cnf


if [ ! -d /var/lib/mysql/mysql ]; then
cp -r /mdlib/* /var/lib/mysql/
fi

service mysql start

# find /

if [ ! -d /var/lib/mysql/wpdb ]; then
	mysql -e "CREATE DATABASE wpdb;"
	mysql -e "CREATE USER 'abrar'@'%' identified by 'abrar123';"
	mysql -e "GRANT ALL PRIVILEGES ON wpdb.* TO 'abrar'@'%';"
	mysql -e "FLUSH PRIVILEGES;"
	else
	echo "db does exists ..."
fi

# service mysql stop

# mysqld --console

tail -f /dev/null

# mysqld_safe