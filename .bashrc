# Configuration for Bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Use bash aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Source bash prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# Silence bell
set bell-style none

# Bash history
export HISTSIZE=  # Unlimited
export HISTFILESIZE=  # Unlimited
export HISTTIMEFORMAT='%F %T '  # yyyy-mm-dd h:m:s
shopt -s histappend  # Write to file for every command entered

# Initialize conda
if command -v conda >/dev/null 2>&1; then
    eval "$(conda shell.bash hook)"
fi
