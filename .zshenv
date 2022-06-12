# XDG vars used by many programs for config data
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# ZSH specific variables
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# Standarts
export EDITOR="nvim"
export VISUAL="nvim"