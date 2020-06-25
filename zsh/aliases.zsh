# these are my standard system aliases

# quick moving and other stuff

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias h='history'

# colorizses some output... I prefer this
alias ls='ls -F --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -alF --color=auto'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias diff='colordiff'

# file actions

alias mkdir='mkdir -pv'
alias edit='vim'

# system actions

alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'

# updates
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'

# misc.
alias shark='sudo surfshark-vpn'
