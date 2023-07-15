# .bashrc

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

# Initialize conda
eval "$(conda shell.bash hook)"
