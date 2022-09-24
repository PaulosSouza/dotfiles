#!/bin/bash

# Install Neovim
mkdir -p ~/tmp && cd ~/tmp
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/apprun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# Install Asdf
mkdir -p ~/.asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 
echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc

# Asdf-node dependencies
sudo apt-get install -y dirmngr gpg curl gawk

# Asdf-go dependencies
sudo apt install -y coreutils
