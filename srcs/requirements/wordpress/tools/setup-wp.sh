#!/bin/bash

sleep 5

# to avoid doing this every time
if [ ! -e /var/www/html/wp-config.php ]; then

cp -r /wordpress/* /var/www/html/

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# set up wp-config.php
wp config --allow-root --path=/var/www/html/ set DB_NAME $MYSQL_DB_NAME

wp config --allow-root --path=/var/www/html/ set DB_USER $ADMIN_USER

wp config --allow-root --path=/var/www/html/ set DB_PASSWORD $ADMIN_PASS

wp config --allow-root --path=/var/www/html/ set DB_HOST $MYSQL_DB_HOST
echo "ABRAR: wp config is done !!"



# required to install wp and not to show the installation page
wp core install --allow-root --path=/var/www/html/ --url=localhost --title="YOOO IT'S A B R A R" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL
echo "ABRAR: wp installation page !!"


# create a user with role of contributor
wp user create --allow-root --path=/var/www/html/ $WP_USER $WP_USER_EMAIL --role=contributor --user_pass=s$WP_USER_PASS
echo "ABRAR: create user in wp db !!"




# set up redis cache
wp config --allow-root --path=/var/www/html/ set WP_CACHE_KEY_SALT $REDIS_KEY_SALT

wp config --allow-root --path=/var/www/html/ set WP_CACHE true

wp config  --allow-root --path=/var/www/html/ set WP_REDIS_HOST $REDIS_HOST

wp config --allow-root --path=/var/www/html/ set WP_REDIS_PORT $REDIS_PORT

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