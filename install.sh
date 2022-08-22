#!/bin/bash

# Create tmp folder
mkdir -p ~/Workspace && cd ~/Workspace

# Install git
sudo apt-get install -y git

# Install zsh
sudo apt-get install -y zsh 

# Install curl
sudo apt-get install -y curl

# Install build essentials
sudo apt-get -y install build-essential

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Pull dotfiles
git clone https://github.com/PaulosSouza/Dotfiles.git dotfiles

# Zshrc config
cp -r ~/Workspace/dotfiles/zsh/.zshrc ~/.zshrc

# Nvim config
mkdir -p ~/.config/nvim
cp -r ~/Workspace/dotfiles/nvim ~/.config/

# Wezterm config
mkdir -p ~/.config/wezterm
cp -r ~/Workspace/dotfiles/wezterm ~/.config/

# Install others plugins according to each os way
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  sh ~/Workspace/dotfiles/scripts/os/linux.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
  sh s~/Workspace/dotfiles/scripts/os/linux.sh
fi

# Add asdf-nodejs 
# asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
# asdf install nodejs lts
# asdf global nodejs lts

# Add asdf-go 
# TODO: add asdf-go and its dependecies

# Install lsp dependencies
#npm i -g npm yarn typescript typescript-language-server vscode-langservers-extracted emmet-ls typescript-styled-plugin

