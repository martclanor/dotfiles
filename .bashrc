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

# Set vim as default editor
export EDITOR=vim

# Silence bell
set bell-style none

# Ensure that TERM is set
export TERM=xterm-256color

# Bash history
export HISTSIZE=  # Unlimited
export HISTFILESIZE=  # Unlimited
export HISTTIMEFORMAT='%F %T '  # yyyy-mm-dd h:m:s
shopt -s histappend  # Write to file for every command entered

# Initialize conda
if command -v conda >/dev/null 2>&1; then
    eval "$(conda shell.bash hook)"
fi

# Slurm log tail
slog() {
    tail -f "slurm_log/$1"
}

# Prevent ctrl+d from exiting shell
set -o ignoreeof
