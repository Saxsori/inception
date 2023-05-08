FROM debian:buster

RUN apt-get update && apt-get install --yes mariadb-server mariadb-client

COPY ./tools/prepare_mysql.sh /prepare_mysql.sh

RUN chmod +x /prepare_mysql.sh

RUN mkdir -p /mdlib && cp -r /var/lib/mysql/* /mdlib

EXPOSE 3306

ENTRYPOINT [ "./prepare_mysql.sh" ]