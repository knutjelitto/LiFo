# System-wide .bashrc file for interactive bash(1) shells.
echo "sourcing bash.bashrc"

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
PS1='(tools) \u:\w\$ '

# If this is an xterm set the title to user:dir
case "$TERM" in
	xterm*|rxvt*) PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"' ;;
	*) ;;
esac
