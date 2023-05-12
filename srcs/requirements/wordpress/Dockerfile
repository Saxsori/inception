FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql php-mbstring php-xml php-zip php-gd php-bcmath php-cli curl && service php7.3-fpm start

RUN apt-get install -y wget && mkdir -p /var/www/html && \
wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && rm -rf latest.tar.gz

# install wp-cli to manage wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

# set up wordpress
COPY ./tools/setup-wp.sh /setup-wp.sh

WORKDIR /

RUN chmod +x /setup-wp.sh

EXPOSE 9000

ENTRYPOINT ["./setup-wp.sh"]
