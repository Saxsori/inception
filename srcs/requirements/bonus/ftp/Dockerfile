FROM debian:buster

RUN apt-get update && apt-get install --yes vsftpd

WORKDIR /

COPY ./tools/script.sh /script.sh

RUN chmod +x /script.sh

RUN ./script.sh

EXPOSE 21 20

COPY ./conf/vsftpd.conf /vsftpd.conf

CMD ["vsftpd", "/vsftpd.conf"]


