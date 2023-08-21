# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# General exports
export LANG=en_US.UTF-8

# Alias
alias python=python3
alias redshift-control=$HOME/Personal/scripts/redshift-control.sh
alias code=codium

# Path's config
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.asdf/installs/rust/stable/bin
export PATH="/usr/local/sbin:$PATH"

# ZSH config
ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="spaceship" 
source $ZSH/oh-my-zsh.sh

# Spaceship config
export SPACESHIP_CONFIG="$HOME/.spaceshiprc.zsh"

# Disable Kitty Wayland
export KITTY_DISABLE_WAYLAND=1

plugins=(git)
plugins=(asdf)

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
      print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### End of Zinit's installer chunk

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/home/paulosouza/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# ASDF
. "$HOME/.asdf/asdf.sh"

# EXA
alias ls="exa --icons"

eval "$(starship init zsh)"
