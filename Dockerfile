FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && \
      apt-get -y install sudo

COPY . .

RUN chmod +x ./install.sh

RUN ./install.sh
