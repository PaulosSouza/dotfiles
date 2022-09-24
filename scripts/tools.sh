#!/bin/bash


# Add asdf-nodejs 
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Add asdf-go 
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.18.4
asdf global golang 1.18.4

# Add asdf-rust (for lunarvim) 
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust stable
asdf global rust stable


# Install Lunarvim
npm i -g yarn npm
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

