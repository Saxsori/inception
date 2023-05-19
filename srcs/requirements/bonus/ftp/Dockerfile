FROM alpine:3.13

RUN	apk update && apk upgrade && apk add vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

COPY ./tools/setup-ftp.sh /setup-ftp.sh

RUN chmod +x /setup-ftp.sh

EXPOSE 21 21100-21110

WORKDIR /

ENTRYPOINT [ "./setup-ftp.sh" ]