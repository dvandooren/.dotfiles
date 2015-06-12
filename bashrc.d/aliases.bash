alias ll='ls -lh'
alias hex='printf "%x\n"'
alias secpass='openssl rand -base64 14'
alias hexpass='openssl rand -hex 10'
alias du='du -h'
alias dum='du -h -d 1'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

if [ "$(uname)" == "Darwin" ]; then
    # Mac OSX specific aliases
    alias ejectall="osascript -e 'tell application \"Finder\" to eject (every disk whose ejectable is true)'"
    alias lastconnected='defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences |grep LastConnected -A 7'
fi
