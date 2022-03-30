#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export SUDO_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
# alias ls='ls --color=auto'
PS1='\[\e[0;38;5;210m\]♡\[\e[m\] \[\e[0;38;5;210m\]\w \[\e[0m\]'
export PATH="$HOME/.local/bin:$PATH"

. "$HOME/.cargo/env"
