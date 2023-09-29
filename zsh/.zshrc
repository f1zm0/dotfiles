# Aliases
source $HOME/.aliases.zsh

# Enable starship
eval "$(starship init zsh)"

# make sure we are sharing history between shells
setopt share_history

# history optimization
setopt hist_ignore_dups

# Plugins
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Fzf integration
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Plugin options
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'

lazynvm() {
  # lazyload nvm to speed up shell startup
  # https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/
  unset -f nvm node npm npx
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  if [ -f "$NVM_DIR/bash_completion" ]; then
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
  fi
}

nvm() {
  lazynvm 
  nvm $@
}
 
node() {
  lazynvm
  node $@
}
 
npm() {
  lazynvm
  npm $@
}

npx() {
  lazynvm
  npx $@
}
