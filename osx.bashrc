# Don't do anything if not running interactively
if [[ $- != *i* ]] ; then
    return
fi

# Don't do anything if running a restricted shell
if shopt -q restricted_shell ; then
    return
fi

# Keep a hundred thousand lines of history in file
HISTFILESIZE=100000

# Keep a thousand lines of history in memory
HISTSIZE=1000

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Ignore duplicate commands and whitespace in history
HISTCONTROL=ignoreboth

# Keep the times of the commands in history
HISTTIMEFORMAT='%F %T  '

# Needed to run Ansible
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load any supplementary scripts
if [[ -d $HOME/.bashrc.d ]] ; then
    for bashrc in "$HOME"/.bashrc.d/*.bash ; do
        if [[ -e $bashrc ]] ; then
            source "$bashrc"
        fi
    done
    unset -v bashrc
fi
