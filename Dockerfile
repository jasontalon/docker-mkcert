FROM debian:buster-slim

WORKDIR /app

RUN apt update \
  && apt install -y wget \
  && wget -c https://github.com/FiloSottile/mkcert/releases/download/v1.4.2/mkcert-v1.4.2-linux-amd64 -O mkcert \
  && chmod u+x mkcert \ 
  && mv mkcert /usr/bin/mkcert 