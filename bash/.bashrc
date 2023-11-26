# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash line in colors
source ~/.bash_git
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]$(__git_ps1 " (%s)")\[\e[0;39m\]\$\[\033[0m\] '

# Standard editor
export EDITOR="vim"

# Always start tmux (https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux)
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

# Quit lf in selected directory
lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
alias lf='lfcd'

# Change brightness
b(){
	if (($1 ==  0))
	then 
		turnoffscreen.sh
	else
		change_brightness.sh $1
	fi
}
