FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql php-mbstring php-xml php-zip php-gd php-bcmath php-cli curl && service php7.3-fpm start

RUN apt-get install -y wget && mkdir -p /var/www/html && \
wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

# install wp-cli to manage wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp


COPY ./conf/wp-config.php /wp-config.php

COPY ./tools/wp_files.sh /wp_files.sh

WORKDIR /

RUN chmod +x /wp_files.sh

EXPOSE 9000

ENTRYPOINT ["./wp_files.sh"]
