FROM debian:buster

RUN apt-get update && apt-get install -y nginx

COPY ./tools/*  /var/www/html/*

COPY ./conf/static.conf /etc/nginx/sites-available/static.conf 

RUN ln -s /etc/nginx/sites-available/static.conf /etc/nginx/sites-enabled/

EXPOSE 7777

CMD ["nginx", "-g", "daemon off;"]
