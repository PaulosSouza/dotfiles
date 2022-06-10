FROM ubuntu:latest

WORKDIR /worker

RUN apt-get update && \
      apt-get -y install sudo && \
      sudo apt install -y zsh 

COPY . .

RUN chmod +x ./install.sh

RUN ./install.sh
