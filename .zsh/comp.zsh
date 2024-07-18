# AUTOCOMPLETE
autoload -U compinit && compinit

# HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# HISTORY BINDINGS
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
