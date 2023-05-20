FROM debian:buster

RUN apt-get update && apt-get install --yes mariadb-server mariadb-client

COPY ./tools/setup-mysql.sh /setup-mysql.sh

RUN chmod +x /setup-mysql.sh

RUN mkdir -p /mdlib && cp -r /var/lib/mysql/* /mdlib

ENTRYPOINT [ "./setup-mysql.sh" ]