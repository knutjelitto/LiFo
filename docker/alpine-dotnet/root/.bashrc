#!/bin/bash

shopt -s checkwinsize
umask 022
export HISTCONTROL=ignorespace:ignoredups:erasedups

export PS1="(POGO) [\u]: \w\\$ "
export PROMPT_COMMAND='echo -ne "\033]0;(POGO) [${USER}]: ${PWD}\007"'

alias l='ls -lA'
alias ll='ls -lA'
alias lll='ls -lA | less'
