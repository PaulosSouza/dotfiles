#!/bin/zsh

cd ~/Workspace && mdkir -p tmp && cd tmp
curl -lo https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/apprun --version

# Install PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 
sudo apt-get install -y dirmngr gpg curl gawk
cd && . $HOME/.asdf/asdf.sh && . $HOME/.asdf/completions/asdf.bash 
