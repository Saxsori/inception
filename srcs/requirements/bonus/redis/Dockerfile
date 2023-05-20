FROM debian:buster

RUN apt-get update && apt-get install --yes redis-server

# RUN sed -i 's/^bind .*/bind 0.0.0.0/' /etc/redis/redis.conf

# RUN sed -i '/^bind/c\#' /etc/redis/redis.conf

# RUN sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis/redis.conf

# EXPOSE 6379

# redis was showing error to run the server on protected mode 
CMD ["redis-server", "--daemonize", "no", "--protected-mode", "no"]