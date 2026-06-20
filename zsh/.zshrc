#  ______   _____ _    _
# |___  /  / ____| |  | |
#    / /  | (___ | |__| |
#   / /    \___ \|  __  |
#  / /__   ____) | |  | |
# /_____| |_____/|_|  |_|

# Install antigen if not already installed
if ! [[ -f $HOME/antigen.zsh ]]; then
    curl -L git.io/antigen >$HOME/antigen.zsh
fi

source $HOME/antigen.zsh

# Custom aliases
source $ZDOTDIR/aliases.zsh

# Script for markdown & docx conversion
source "$DOTDIR"/pandoc/wr.sh

# Use Vi keybinds
bindkey -v

# Cursor style for vi modes (DECSCUSR)
zle-keymap-select() {
    if [[ $KEYMAP == vicmd ]]; then
        echo -ne '\e[6 q'  # steady bar for command mode
    else
        echo -ne '\e[3 q'  # blinking underline for insert mode
    fi
}
zle -N zle-keymap-select
zle-line-init() { echo -ne '\e[3 q' }
zle -N zle-line-init

# Lazy-load nvm (sourcing nvm.sh eagerly costs ~2.3s)
export NVM_DIR="$HOME/.nvm"
export PATH="$NVM_DIR/versions/node/v26.1.0/bin:$PATH"

_load_nvm() {
    unfunction nvm node npm npx 2>/dev/null
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}
nvm() { _load_nvm; nvm "$@"; }
node() { _load_nvm; node "$@"; }
npm() { _load_nvm; npm "$@"; }
npx() { _load_nvm; npx "$@"; }

case "$OSTYPE" in
"darwin"*)
    [ -f /opt/homebrew/etc/profile.d/autojump.sh ] &&
        . /opt/homebrew/etc/profile.d/autojump.sh
    ;;
"linux"*)
    . /usr/share/autojump/autojump.sh
    ;;
esac

# -------
# Plugins
# -------

# Suggests an alias if exists
antigen bundle MichaelAquilina/zsh-you-should-use

# Auto-completion based on history
antigen bundle zsh-users/zsh-autosuggestions

# Fish-like syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Fish-like history search
antigen bundle zsh-users/zsh-history-substring-search

# For feelings
antigen bundle qiz-li/feeling@main

# Clean minimal prompt
antigen theme jackharrisonsherlock/common
# Enable colors and prompt expansion
autoload -U colors && colors
setopt promptsubst

antigen apply

# Zsh substring search keybindings
# Needs to be after `antigen apply`
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

[[ -f $ZDOTDIR/local.zsh ]] && source $ZDOTDIR/local.zsh

# Show feelings "calendar"
feeling

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
