FROM debian:stable-slim

EXPOSE 8090
WORKDIR /opt

RUN apt update && apt install -y wget
RUN cd /opt && wget https://github.com/YouROK/TorrServer/releases/latest/download/TorrServer-linux-amd64 && chmod +x TorrServer-linux-amd64

ENTRYPOINT ./TorrServer-linux-amd64