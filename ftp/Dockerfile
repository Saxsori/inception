FROM debian:buster

RUN apt-get update && apt-get install --yes vsftpd

# RUN echo "local_root=/var/www/html" >> /etc/vsftpd.conf

# RUN sed -i 's/^#write_enable=YES/write_enable=YES/' /etc/vsftpd/vsftpd.conf

WORKDIR /

COPY script.sh /script.sh

RUN chmod +x /script.sh

RUN ./script.sh

EXPOSE 21 1024-1048 20

CMD ["vsftpd", "/etc/vsftpd.conf"]

