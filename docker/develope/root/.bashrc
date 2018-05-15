echo "sourcing ~/.bashrc"

shopt -s checkwinsize
umask 022
HISTCONTROL=ignorespace:ignoredups:erasedups

case "${POGO_CHROOT}" in
    Boots)
        which="boots-chroot"
        PATH=/tools/bin:/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin
        ;;
    Tools)
        which="tools-chroot"
        PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin:/tools/bin
        ;;
    *)  
        which="develope"
        PATH=/sbin:/bin:/usr/sbin:/usr/bin:/LiFo/bin
        ;;
esac

PS1="($which) [\u]: \w\\$ "
PROMPT_COMMAND='echo -ne "\033]0;($which) [${USER}]: ${PWD}\007"'

alias l='ls -lA'
alias ll='ls -lA'
