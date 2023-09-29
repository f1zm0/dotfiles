# Aliases
source $HOME/.aliases.zsh

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
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#777'

# Enable starship
eval "$(starship init zsh)"
