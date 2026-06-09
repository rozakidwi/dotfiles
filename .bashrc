#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
set -o vi

git_branch() {
	BRANCH_NAME="$(git branch --show-current 2>/dev/null)"
	[ -n "$BRANCH_NAME" ] && printf "\e[0m at \e[0;92m(Git:%s)" "$BRANCH_NAME"
}
PS1='\e[0;91m\w$(git_branch) \e[0;96m>>\e[0m '
