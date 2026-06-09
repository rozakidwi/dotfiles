#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
set -o vi
source /usr/share/git/completion/git-prompt.sh
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (Git:%s)")'; PS1='\[\e[94m\]\w\[\e[92m\]${PS1_CMD1}\[\e[0m\] \[\e[91m\]>>\[\e[0m\] '
