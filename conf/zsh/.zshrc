source ~/.zshenv
bindkey -v
export KEYTIMEOUT=1
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

cursor_mode() {
    # See https://ttssh2.osdn.jp/manual/4/en/usage/tips/vim.html for cursor shapes
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

autoload -Uz compinit; compinit
autoload -U colors && colors
zstyle ':completion:*' menu select
_comp_options+=(globdots) # With hidden files
fpath=("$ZDOTDIR/prompts" $fpath)
autoload -Uz prompt_purification_setup && prompt_purification_setup
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
