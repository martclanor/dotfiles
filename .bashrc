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

# Initialize conda
if command -v conda >/dev/null 2>&1; then
    eval "$(conda shell.bash hook)"
else
    echo "Warning: conda is not installed or not in the system's PATH."
    echo "Please make sure conda is properly installed and configured."
fi
