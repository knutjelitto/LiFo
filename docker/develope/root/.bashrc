#!/bin/bash

shopt -s checkwinsize
umask 022
export HISTCONTROL=ignorespace:ignoredups:erasedups

case "${POGO_CHROOT}" in
    Boots)
        export POGO_ENV="boots-chroot"
        export PATH=/tools/bin:/bin:/usr/bin:/LiFo/bin
        export TERM=xterm
        ;;
    Tools)
        export POGO_ENV="tools-chroot"
        export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/LiFo/bin:/tools/bin
        export TERM=xterm
        ;;
    Core)
        export POGO_ENV="core-chroot"
        export PATH=/usr/sbin:/usr/bin:/sbin:/bin:/LiFo/bin
        export TERM=xterm
        export LC_ALL=en_US.UTF-8
        export LANG=en_US.UTF-8
        export LANGUAGE=en_US.UTF-8
        ;;
    *)  
        export POGO_ENV="develope"
        export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin
        export TERM=xterm
        export LANG=C.UTF-8
        export LANGUAGE=C.UTF-8
        export LC_ALL=C.UTF-8
        ;;
esac

export Pogos="/LiFo/pogos"

EnterWorldOfPogo ()
{
    source "$Pogos/PogoConfig" "${1:-}"
}
# export function for convenience
declare -F -x EnterWorldOfPogo


export PS1="($POGO_ENV) [\u]: \w\\$ "
export PROMPT_COMMAND='echo -ne "\033]0;($POGO_ENV) [${USER}]: ${PWD}\007"'

alias l='ls -lA'
alias ll='ls -lA'
alias lll='ls -lA | less'
