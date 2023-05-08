#!/bin/bash
cp -r /wordpress/* /var/www/html/
mv /wp-config.php /var/www/html/
rm -rf /wordpress
chown -R www-data:www-data /var/www/html/
sed -i 's/listen = .*/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core install  --allow-root --path=/var/www/html/ --url=localhost:442 --title="YOOO IT IS A B R A R" --admin_user=abrar --admin_password=abrar123 --admin_email=saxxxsori@gmail.com
php-fpm7.3 -F