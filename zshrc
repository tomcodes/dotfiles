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

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/.functions ]; then
    . ~/.functions
fi

if [ -f ~/.path ]; then
    . ~/.path
fi

autoload -Uz promptinit
promptinit
prompt sorin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=PATH=$PATH:~/bin/diff-so-fancy

PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"
