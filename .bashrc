# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Use bash aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Silence bell
set bell-style none

# Style prompt
# Prevent venv from changing the prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
parse_python_env() {
     if [[ -n "$VIRTUAL_ENV" ]]; then
         echo "($(basename $VIRTUAL_ENV))"
     elif [[ -n "$CONDA_DEFAULT_ENV" ]]; then
         echo "($CONDA_DEFAULT_ENV)"
     fi
}
export PS1="\[$(tput setaf 45)\]\$(parse_python_env) \[$(tput setaf 195)\][\[$(tput setaf 39)\]\u\[$(tput setaf 195)\]@\[$(tput setaf 45)\]\h \[$(tput setaf 214)\]\W\[$(tput setaf 39)\] \$(parse_git_branch)\[$(tput setaf 195)\]]\$\[$(tput sgr0)\] "

# Initialize conda
eval "$(conda shell.bash hook)"
