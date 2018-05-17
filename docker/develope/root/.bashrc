echo "sourcing ~/.bashrc"

shopt -s checkwinsize
umask 022
export HISTCONTROL=ignorespace:ignoredups:erasedups

case "${POGO_CHROOT}" in
    Boots)
        export POGO_ENV="boots-chroot"
        export PATH=/tools/bin:/bin:/usr/bin:/LiFo/bin
        ;;
    Tools)
        export POGO_ENV="tools-chroot"
        export PATH=/bin:/usr/bin:/LiFo/bin:/tools/bin
        ;;
    *)  
        export POGO_ENV="develope"
        export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin
        ;;
esac

export PS1="($POGO_ENV) [\u]: \w\\$ "
export PROMPT_COMMAND='echo -ne "\033]0;($POGO_ENV) [${USER}]: ${PWD}\007"'

alias l='ls -lA'
alias ll='ls -lA'
