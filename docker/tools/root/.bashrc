echo "sourcing ~/.bashrc"

# If not running interactively, don't do anything
[[ -z "$PS1" ]] && return

shopt -s checkwinsize
umask 022

if [[ -n $in_chroot ]]; then
    which="tools/chroot"
else
    which="tools"
fi

PS1="($which) [\u]: \w\\$ "
PROMPT_COMMAND='echo -ne "\033]0;($which) [${USER}]: ${PWD}\007"'
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/tools/sbin:/tools/bin:/LiFo/tools:/LiFo/bin

alias l='ls -lA'
alias ll='ls -lA'
alias lll='ls -lA'
