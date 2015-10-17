export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
else
    color_prompt=
fi

if [ "$color_prompt" = yes ]; then
    export PS1="\[\e[01;32m\]\u@\H\[\e[01;34m\]:\W \$\[\e[0m\] "
    export SUDO_PS1="\[\e[33;01;41m\]\u@\H\\[\e[0m\]\[\e[01;34m\]:\W \$\[\e[0m\] "
else
    export PS1="\u@\H:\W \$ "
fi

PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Load all supplementary scripts in ~/.profile.d
if [ -d "$HOME"/.profile.d ] ; then
    for profile in "$HOME"/.profile.d/*.sh ; do
        if [ -e "$profile" ] ; then
            . "$profile"
        fi
    done
    unset -v profile
fi

if [ -f ~/.bashrc ]; then 
    . ~/.bashrc; 
fi 
