FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql php-mbstring php-xml php-zip php-gd php-bcmath php-cli curl && service php7.3-fpm start

RUN apt-get install -y wget && mkdir -p /var/www/html

# set up wordpress
COPY ./tools/setup-wp.sh /setup-wp.sh

WORKDIR /

RUN chmod +x /setup-wp.sh

ENTRYPOINT ["./setup-wp.sh"]
