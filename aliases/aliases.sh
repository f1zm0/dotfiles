# Nvim
alias v="/usr/bin/nvim"
alias vi="/usr/bin/nvim"
alias vim="/usr/bin/nvim"

# Tee
alias t="/usr/bin/tee"

# Pacman
alias p="/usr/bin/pacman"
alias vim="/usr/bin/nvim"

# Hibernate the machine. Save state in RAM and loads it at startup.
alias hibernate='/usr/bin/systemctl suspend'

# Print length of a string
alias strlen='/usr/bin/expr length' 

# Force xclip to use the clipboard as both source and destination
alias xclip='/usr/bin/xclip -selection clipboard'

# Print all the custom aliases (in this file)
alias aliases='grep "^alias "  ~/dotfiles/zsh/aliases.sh'

# Paste images from clipboard
alias imgpaste='/usr/bin/xclip -selection clipboard -target image/png -o >'

# lsd as replacement to ls command
alias ls='lsd'

# web server
alias httpserver='python3 -m http.server'

# Close panes faster
alias x="exit"

# Zsh
alias zshfix="$HOME/.config/zsh/zsh_history_fix.sh"

# Pretty print json
alias pjs='python -m json.tool'

# Pretty print csv
function pretty_csv {
    column -t -s, -n "$@" | less -F -S -X -K
}
