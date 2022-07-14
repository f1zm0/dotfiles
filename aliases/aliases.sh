# +------------+
# | Networking |
# +------------+

# services
alias ports='ss -tulpn | awk '{print $5}' | tail -n+2'
alias grepip='grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}(\/([0-9]|[1-2][0-9]|3[0-2]))?\b"'
alias ipa='ip a'
alias pubip='curl https://ifconfig.io/ip'
alias privip='ip a | grepip'
alias pingg='ping -c 1 8.8.8.8'
alias dns='cat /etc/resolv.conf | tail -n+2'
alias digs='dig +short'

# web server
alias httpserver='python3 -m http.server'

# +------------+
# | Filesystem |
# +------------+

alias mkdir='mkdir -pv'

# lsd as replacement to ls command
alias ls='lsd'

# dir listing
alias l='ls -l'
alias ll='ls -l'
alias dir='ls -l'
alias la='ls -la'

# navigation
alias ...='../../'
alias ....='../../../'
alias .....='../../../../'
alias ......='../../../../../'

# +--------+
# | System |
# +--------+

alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias suspend='sudo pm-suspend'
alias hibernate='/usr/bin/systemctl suspend'

# +--------+
# | Pacman |
# +--------+

alias pacy="/usr/bin/pacman -Sy"
alias pacu="/usr/bin/pacman -Syu"
alias paci="/usr/bin/pacman -S"

# +-----+
# | Yay |
# +-----+

alias yayy="/usr/bin/yay -Sy"
alias yayu="/usr/bin/yay -Syu"
alias yayi="/usr/bin/yay -S"

# +-----+
# | Zsh |
# +-----+

alias zshfix="$HOME/dotfiles/zsh/zsh_history_fix.sh"
alias zshrc="/usr/bin/neovim ~/.zshrc"

# +--------+
# | Neovim |
# +--------+

alias v="/usr/bin/nvim"
alias vi="/usr/bin/nvim"
alias vim="/usr/bin/nvim"

# +------+
# | Tmux |
# +------+

alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux list-sessions'

# +-----+
# | Git |
# +-----+

# Short aliases
alias ga='git add'
alias gb='git branch' 
alias gc='git commit -m'
alias gca='git commit -am'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --graph --oneline --decorate'
alias gdc='git diff --cached'
alias gr='git remote'
alias gs='git status'
alias gp='git push'

# More verbose aliases
alias gadd='git add'
alias gbran='git branch'
alias gcheck='git checkout'
alias gcom='git commit -am'
alias gcomm='git commit -am'
alias gamen='git commit --amend'
alias glog='git log --graph --oneline --decorate'
alias gpush='git push origin'
alias gpull='git pull origin'

# +--------+
# | Docker |
# +--------+

alias dockimg='docker images'
alias dockps='docker ps'
alias dockpsa='docker ps -a'
alias dockclean='docker rm $(docker ps --filter status=exited -q)'

# +---------+
# | Strings |
# +---------+

# Print length of a string
function strlen {
    if [ -z "$1" ]; then
        local str; read str; /usr/bin/expr length $str
    else
        /usr/bin/expr length $1
    fi
}

# Generate random string of specified length
function randstr {
    STRLEN=$1
    if [ -z "$1" ]; then
        STRLEN=16
    fi
    cat /dev/urandom | tr -dc '[:alpha:]' | head -c $STRLEN
}

# +------+
# | Text |
# +------+

# Pretty print json
alias pjs='python -m json.tool'

# Pretty print csv
function pretty_csv {
    column -t -s, -n "$@" | less -F -S -X -K
}

# +-----------+
# | Clipboard |
# +-----------+

# Force xclip to use the clipboard as both source and destination
alias xclip='/usr/bin/xclip -selection clipboard'
alias clip='xclip'

# Paste images from clipboard
alias imgpaste='/usr/bin/xclip -selection clipboard -target image/png -o >'

# +----------+
# | Markdown |
# +----------+

alias lstoc="ls -l | awk '{print \"- [\"\$11\"](#\"\$11\")\"}'"

# +-----------+
# | Shortcuts |
# +-----------+

alias h="cd ~"
alias x="exit"

# Print all the custom aliases (in this file)
alias aliases='cat $HOME/dotfiles/aliases/aliases.sh | grep ^alias'
