#!/usr/bin/env zsh

# Copy yabai
cp -r ~/Workspace/dotfiles/yabai/.yabairc ~/.yabairc

# Copy s
cp -r ~/Workspace/dotfiles/skhd/.skhdrc ~/.skhdrc

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Asdf
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# Asdf-node dependencies
brew install gpg gawk

# Asdf-go dependencies
brew install coreutils
