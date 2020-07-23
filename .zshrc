#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias pman="sudo pacman -S"

# Check for lsd
if ! hash lsd &> /dev/null
then
    echo "install lsd"
else
    alias ls="lsd"
fi

alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
neofetch

# Check for bat
if ! hash bat &> /dev/null
then
    echo "install bat"
else
    alias cat="bat"
fi
