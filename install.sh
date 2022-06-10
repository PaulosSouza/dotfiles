#!/bin/bash

# Install git
sudo apt install -y git

# Install curl
sudo apt install -y curl

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Set zsh as default shell
chsh -s $(which zsh)

# Copy zshrc file
cd zsh && \
  cp -r .zshrc ~/.zshrc && \
  cd

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh

# Install neovim
sudo apt-get install software-properties-common -y && \
  sudo add-apt-repository ppa:neovim-ppa/stable -y && \
  sudo apt-get update -y && \
  sudo apt-get install neovim -y

# Install PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
