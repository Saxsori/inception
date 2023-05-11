FROM debian:buster

RUN apt-get update && apt-get install --yes vsftpd

WORKDIR /

COPY script.sh /script.sh

RUN chmod +x /script.sh

RUN ./script.sh

EXPOSE 21 20

COPY ./vsftpd.conf /vsftpd.conf

CMD ["vsftpd", "/vsftpd.conf"]


