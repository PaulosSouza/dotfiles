FROM ubuntu:latest

WORKDIR /root/Workspace/dotfiles

RUN apt-get update && \
  apt-get -y install sudo

COPY . .

RUN chmod +x ./scripts/install.sh ./scripts/os/linux.sh ./scripts/os/mac.sh

RUN ./scripts/install.sh
