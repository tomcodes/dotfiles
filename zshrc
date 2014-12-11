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

autoload -Uz promptinit
promptinit
prompt sorin

export PATH=$HOME/bin:/usr/local/bin:$PATH

export PAGER=/usr/local/bin/vimpager
export VIMCAT=/usr/local/bin/vimcat

alias less=$PAGER
alias zless=$PAGER
alias cat=$VIMCAT
