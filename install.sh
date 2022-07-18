#!/bin/bash

# Create tmp folder
cd && mkdir tmp && cd tmp

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

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Download Dotfiles
git clone https://github.com/PaulosSouza/Dotfiles.git dotfiles

# Copy zshrc file
cp -r dotfiles/zsh/.zshrc ~/.zshrc

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# Create nvim config
mkdir -p ~/.config/nvim
cp -r ~/tmp/dotfiles/nvim ~/.config

# Install PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
