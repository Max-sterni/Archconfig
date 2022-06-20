
# Display image from pictures/jp2a in ascii
find $HOME/pictures/jp2a/ -type f | shuf -n 1 | convert @- png:- | jp2a - --color --height=25

# Aliases
source $ZDOTDIR/aliases
setopt completealiases

# History -------------------------------------------------------------

setopt HIST_SAVE_NO_DUPS
bindkey '^R' history-incremental-search-backward

# Completion TODO https://github.com/Phantas0s/.dotfiles/blob/master/zsh/completion.zsh
zmodload zsh/complist
autoload -U compinit; compinit

_comp_options+=(globdots)

# Prompt -------------------------------------------------------------

source $ZDOTDIR/prompt

# Directory stack ----------------------------------------------------

setopt AUTO_PUSHD # push current directory on dstack
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Vim mode -----------------------------------------------------------

bindkey -v
export KEYTIMEOUT=1

# makes the courser thick in vim mode
cursor_mode() {
    cursor_block='\e[2 q'
    cursor_beam='\e[6 q'

    function zle-keymap-select {
        if [[ ${KEYMAP} == vicmd ]] ||
            [[ $1 = 'block' ]]; then
            echo -ne $cursor_block
        elif [[ ${KEYMAP} == main ]] ||
            [[ ${KEYMAP} == viins ]] ||
            [[ ${KEYMAP} = '' ]] ||
            [[ $1 = 'beam' ]]; then
            echo -ne $cursor_beam
        fi
    }

    zle-line-init() {
        echo -ne $cursor_beam
    }

    zle -N zle-keymap-select
    zle -N zle-line-init
}

cursor_mode

# Vim navigation autocompletion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

source /home/sterni/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
