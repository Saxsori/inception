FROM debian:buster

RUN apt-get update && apt-get install --yes vsftpd

WORKDIR /

COPY ./tools/setup-ftp.sh /setup-ftp.sh

RUN chmod +x /setup-ftp.sh

RUN ./setup-ftp.sh

EXPOSE 21 20

COPY ./conf/vsftpd.conf /vsftpd.conf

CMD ["vsftpd", "/vsftpd.conf"]


