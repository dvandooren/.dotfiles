if [ "$(uname)" == "Darwin" ]; then
    # Mac OSX specific functions
    source "$HOME"/.bashrc.d/osx.functions
fi

if [ -f "/etc/redhat-release" ]; then
    # CentOS/Redhat specific functions
    source "$HOME"/.bashrc.d/linux.functions
    source "$HOME"/.bashrc.d/rhel.functions
fi

if [ -f "/etc/debian_version" ]; then
    # Ubuntu/Devian specific functions
    source "$HOME"/.bashrc.d/linux.functions
    source "$HOME"/.bashrc.d/deb.functions
fi

# Common Functions

