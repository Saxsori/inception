FROM debian:buster

RUN apt-get update && apt-get install -y wget php php-mysql php-pgsql php-sqlite3 php-xml php-mbstring

RUN wget -O /var/www/html/adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

# appache server was running its debian default page instead
RUN mv /var/www/html/adminer.php /var/www/html/index.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html/"]