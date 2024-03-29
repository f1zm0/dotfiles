# ------------------
# -- Default apps
# ------------------
export EDITOR="hvim"
export VISUAL="hvim"
export READER="zathura"
export TERMINAL="kitty"
export BROWSER="chromium"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="bspwm"

# -------------
# -- Binaries 
# -------------
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# -------------
# -- Zsh 
# -------------
export HISTFILE="$HOME/.zsh_history" # history file
export HISTSIZE=10000                # maximum events for internal history
export SAVEHIST=10000                # maximum events in history file

# -------------
# -- Starship
# -------------
export STARSHIP_CONFIG="$HOME/.starship.toml" # custom config path

# -------------
# -- Fzf 
# -------------
export FZF_DEFAULT_COMMAND='fd --type f'

# -------------
# -- Go 
# -------------
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH:$GOBIN
export PATH=$PATH:/usr/local/go/bin

# -------------
# -- Rust 
# -------------
export CARGOBIN=$HOME/.cargo/bin
export PATH=$PATH:$CARGOBIN

# -------------
# -- Nim
# -------------
export NIMBLEBIN=$HOME/.nimble/bin
export PATH=$PATH:$NIMBLEBIN

# -------------
# -- NodeJS 
# -------------
export NVMDIR=$HOME/.nvm
export YARNBIN=$HOME/.yarn/bin
export PATH=$PATH:$YARNBIN

