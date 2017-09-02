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
remux-mkv-aac() {
    if (( $# < 1 )) ; then
        printf 'usage: %s <file.jpg>\n' "$FUNCNAME" >&2
        return 2
    fi

    f=$1
    ffmpeg -i "$f" -c:v copy -c:a aac -b:a 256k -strict -2 "${f%mkv}mp4"
}

remux-mkv() {
    if (( $# < 1 )) ; then
        printf 'usage: %s <file.jpg>\n' "$FUNCNAME" >&2
        return 2
    fi

    f=$1
    ffmpeg -i "$f" -c copy "${f%mkv}mp4"
}

grab-hls() {
    if (( $# < 2 )); then
        printf 'usage: %s <file.mp4> <url>\n' "$FUNCNAME" >&2
        return 2
    fi
    f=$1
    u=$2
    ffmpeg -i "$u" -c copy -bsf:a aac_adtstoasc "$f"
}