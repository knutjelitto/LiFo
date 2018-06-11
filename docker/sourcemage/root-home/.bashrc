#!/bin/bash

shopt -s checkwinsize
export HISTCONTROL=ignorespace:ignoredups:erasedups

export Pogos="/LiFo/pogos"

export PS1="(POGO) [\u]: \w\\$ "
export PROMPT_COMMAND='echo -ne "\033]0;(POGO) [${USER}]: ${PWD}\007"'
export LESS='-RX'

alias l='ls -lA'
alias ll='ls -lA'
alias lll='ls -lA | less'
