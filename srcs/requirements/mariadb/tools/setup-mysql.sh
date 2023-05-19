#!/bin/bash

# sed -i '/socket/s/^/#/' /etc/mysql/mariadb.conf.d/50-server.cnf

# to make it listen on all interfaces
sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

# ro make it use port instead of socket
sed -i 's/^#port/port/' /etc/mysql/mariadb.conf.d/50-server.cnf

# just for protection
if [ ! -d /var/lib/mysql/mysql ]; then
cp -r /mdlib/* /var/lib/mysql/
fi


service mysql start

# find /

mysql -u root -e "USE mysql; UPDATE user SET authentication_string = PASSWORD('$ROOT_PASS') WHERE User = 'root'; FLUSH PRIVILEGES;"


if [ ! -d /var/lib/mysql/wpdb ]; then
	mysql -e "CREATE DATABASE $MYSQL_DB_NAME;"
	mysql -e "CREATE USER '$ADMIN_USER'@'%' identified by '$ADMIN_PASS';"
	mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DB_NAME.* TO '$ADMIN_USER'@'%';"
	mysql -e "FLUSH PRIVILEGES;"
	echo "ABRAR: db has been created !!"
	else
	echo "ABRAR: db does exists !!"
fi

# starting mysql in this way doesn't make the container stays running 
service mysql stop

# exec mysqld 

mysqld --console

# tail -f /dev/null

# mysqld_safe --console
