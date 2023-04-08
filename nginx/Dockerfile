FROM debian:latest

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir /etc/nginx/ssl && \
    openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
    -subj "/C=AE/ST=AbuDhabi/O=aaljaber/CN=aaljaber" \
    -keyout /etc/nginx/ssl/cert.key \
    -out /etc/nginx/ssl/cert.crt

COPY   ./conf/nginx.conf /etc/nginx/conf.d

COPY ./tools/html/index.html /usr/share/nginx/html/index.html

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
