#!/bin/bash

# to avoid doing this every time
if [ ! -e /var/www/html/wp-config.php ]; then

cp -r /wordpress/* /var/www/html/

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# set up wp-config.php
wp config --allow-root --path=/var/www/html/ set DB_NAME wpdb

wp config --allow-root --path=/var/www/html/ set DB_USER abrar

wp config --allow-root --path=/var/www/html/ set DB_PASSWORD abrar123

wp config --allow-root --path=/var/www/html/ set DB_HOST mariadb
echo "ABRAR: wp config is done !!"



# required to install wp and not to show the installation page
wp core install --allow-root --path=/var/www/html/ --url=localhost:442 --title="YOOO IT'S A B R A R" --admin_user=abrar --admin_password=abrar123 --admin_email=abraraljaberii@gmail.com
echo "ABRAR: wp installation page !!"


# create a user with role of contributor
wp user create --allow-root --path=/var/www/html/ sasori saxxxsori@gmail.com --role=contributor --user_pass=sasori123
echo "ABRAR: create user in wp db !!"




# set up redis cache
wp config --allow-root --path=/var/www/html/ set WP_CACHE_KEY_SALT 'sasori_chuck_isakey'

wp config --allow-root --path=/var/www/html/ set WP_CACHE true

wp config  --allow-root --path=/var/www/html/ set WP_REDIS_HOST 'redis'

wp config --allow-root --path=/var/www/html/ set WP_REDIS_PORT '6379'

wp plugin install redis-cache --allow-root --path=/var/www/html/ --activate

wp redis enable --allow-root --path=/var/www/html/

echo "ABRAR: redis cache plugin installed and configured !!"

else
	echo "ABRAR: wp does exist !!."
fi

# to avoid permission issues with nginx and php-fpm
chown -R www-data:www-data /var/www/html/

sed -i 's/listen = .*/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

rm -rf /wordpress

php-fpm7.3 -F