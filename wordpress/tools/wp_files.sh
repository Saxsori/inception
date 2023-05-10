#!/bin/bash

if [ ! -e /var/www/html/wp-config.php ]; then

cp -r /wordpress/* /var/www/html/

mv /wp-config.php /var/www/html/

wp core install --allow-root --path=/var/www/html/ --url=localhost:442 --title="YOOO IT'S A B R A R" --admin_user=abrar --admin_password=abrar123 --admin_email=saxxxsori@gmail.com

wp user create --allow-root  --path=/var/www/html/ sasori sasori@gmail.com --role=contributor --user_pass=password

else
	echo "wp does exist ..."
fi

chown -R www-data:www-data /var/www/html/

sed -i 's/listen = .*/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

rm -rf /wordpress

php-fpm7.3 -F