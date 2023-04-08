FROM debian:latest

RUN apt-get update && apt-get install -y nginx

COPY ./conf/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/html/index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]