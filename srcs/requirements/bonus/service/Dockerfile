FROM debian:buster

RUN apt-get update && apt-get install --yes curl wget tar

# RUN curl -L https://github.com/portainer/portainer/releases/download/2.18.2/portainer-2.18.2-linux-arm.tar.gz --output /portainer.tar.gz 

RUN wget https://github.com/portainer/portainer/releases/download/2.17.1/portainer-2.17.1-linux-amd64.tar.gz 

RUN tar -xzf portainer-2.17.1-linux-amd64.tar.gz && rm -rf portainer-2.17.1-linux-amd64.tar.gzy

# RUN tar -xzvf portainer.tar.gz && rm portainer.tar.gz

WORKDIR /portainer

# RUN chmod +x portainer

EXPOSE 8977

CMD ["./portainer", "--bind", ":8977"]

# CMD ["tail", "-f", "/dev/null"]
