#!/usr/bin/env bash

# Install git
sudo apt-get install -y git

# Install zsh
sudo apt-get install -y zsh 

# Install curl
sudo apt-get install -y curl

# Install build essentials
sudo apt-get -y install build-essential

# Nvim config
mkdir -p ~/.config/nvim
cp -r ./nvim/* ~/.config/nvim

# Kitty config
mkdir -p ~/.config/kitty
cp -r ./kitty/* ~/.config/kitty

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Change default shell to zsh
chsh -s $(which zsh)

# Copy zshrc
cp -r ./zsh/.zshrc ~/.zshrc

# Detect a OS and run depending what was found
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
bash ./scripts/os/linux.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then 
bash ./scripts/os/mac.sh
fi

