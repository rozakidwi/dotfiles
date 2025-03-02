#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\e[95m\]\u\[\e[0m\] at \[\e[96m\]\H\[\e[0m\] \[\e[93m\]\w\[\e[0m\] \[\e[93m\]>\[\e[0m\] '
export PATH=/home/nain/.local/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
