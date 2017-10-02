alias ll='ls -lh'
alias hex='printf "%x\n"'
alias secpass='openssl rand -base64 14'
alias hexpass='openssl rand -hex 10'
alias du='du -h'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias http_server='python -m SimpleHTTPServer'
alias sshtmp='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias scptmp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias rwget='wget -r --no-parent --reject "index.html*"'

if [ "$(uname)" == "Darwin" ]; then
    # Mac OSX specific aliases
    alias ejectall="osascript -e 'tell application \"Finder\" to eject (every disk whose ejectable is true)'"
    alias lastconnected='defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences |grep LastConnected -A 7'
    alias dum='du -h -d 1'
    alias turf_DSStore='find . -name '*.DS_Store' -type f -delete'
    alias screencap='screencapture -i -c'
    # alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;'
    alias flushdns='sudo killall -HUP mDNSResponder;'
    alias flushdns2='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache;'
    alias timemachine_speedup='sudo sysctl debug.lowpri_throttle_enabled=0'
    alias timemachine_normal='sudo sysctl debug.lowpri_throttle_enabled=1'
fi

if [ -f "/etc/redhat-release" ]; then
    # CentOS/Redhat specific aliases
  alias dum='du -h --max-depth=1'
fi

if [ -f "/etc/debian_version" ]; then
    # Ubuntu/Devian specific aliases
    alias dum='du -h -d 1'
fi

if [ -f "/usr/bin/VBoxManage" ]; then
    # VirtualBox aliases
    alias vbox_vms='VBoxManage list vms'
    alias vbox_running='VBoxManage list runningvms'
fi
