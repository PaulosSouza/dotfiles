#!/usr/bin/env bash

# Create Workspace folder
mkdir -p ~/Workspace && cd ~/Workspace

# Install git
sudo apt-get install -y git

# Install zsh
sudo apt-get install -y zsh 

# Install curl
sudo apt-get install -y curl

# Install build essentials
sudo apt-get -y install build-essential

# Pull dotfiles
git clone https://github.com/PaulosSouza/Dotfiles.git dotfiles && cd dotfiles

# Nvim config
mkdir -p ~/.config/nvim
cp -r ~/Workspace/dotfiles/nvim/* ~/.config/nvim

# Kitty config
mkdir -p ~/.config/kitty
cp -r ~/Workspace/dotfiles/kitty/* ~/.config/kitty

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Copy zshrc
cp -r ~/Workspace/dotfiles/zsh/.zshrc ~/.zshrc

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
bash ~/Workspace/dotfiles/scripts/os/linux.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then 
bash ~/Workspace/dotfiles/scripts/os/mac.sh
fi

# Copy lunarvim
mkdir -p ~/.config/lvim
cp -r ~/Workspace/dotfiles/lvim/* ~/.config/lvim

