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

# Copy zshrc file
cp -r ./zsh/.zshrc ~/.zshrc

# Install neovim
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  sudo mv squashfs-root /
  sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
elif ["$(uname)" == "Darwin"]; then
  brew install neovim
fi

# Create nvim config
mkdir -p ~/.config/nvim
cp -r ~/Projects/dotfiles/nvim ~/.config

# Install PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install asdf and dependencies for nodejs | lazygit(mac)
if ["$(uname)" == "Darwin"]; then
  brew install asdf gpg gawk jesseduffield/lazygit/lazygit
  echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2 
  sudo apt-get install -y dirmngr gpg curl gawk
  cd && . $HOME/.asdf/asdf.sh && . $HOME/.asdf/completions/asdf.bash
fi

exit

# Add nodejs via asdf
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs lts
asdf global nodejs lts

# Install lsp dependencies
npm i -g npm yarn typescript typescript-language-server vscode-langservers-extracted emmet-ls typescript-styled-plugin

