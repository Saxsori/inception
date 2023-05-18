FROM debian:buster

RUN apt-get update && apt-get install --yes vsftpd

COPY ./conf/vsftpd.conf /vsftpd.conf

WORKDIR /

COPY ./tools/setup-ftp.sh /setup-ftp.sh

RUN chmod +x /setup-ftp.sh

RUN ./setup-ftp.sh

EXPOSE 21 20

CMD ["vsftpd", "/vsftpd.conf"]


