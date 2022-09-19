FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && \
  apt-get -y install sudo

COPY . .

RUN chmod +x ./scripts/install.sh ./scripts/os/linux.sh ./scripts/os/mac.sh
