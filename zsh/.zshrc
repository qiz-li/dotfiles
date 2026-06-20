#  ______   _____ _    _
# |___  /  / ____| |  | |
#    / /  | (___ | |__| |
#   / /    \___ \|  __  |
#  / /__   ____) | |  | |
# /_____| |_____/|_|  |_|

# Install zinit if not already installed
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if ! [[ -f $ZINIT_HOME/zinit.zsh ]]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"

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

eval "$(zoxide init zsh --cmd j)"

# -------
# Plugins
# -------

# Prompt (loaded immediately)
autoload -U colors && colors
setopt promptsubst
zinit light jackharrisonsherlock/common

# For feelings
zinit light qiz-li/feeling

# Turbo-loaded plugins (deferred until after prompt renders)
zinit wait lucid for \
    OMZP::common-aliases \
    OMZP::git \
    MichaelAquilina/zsh-you-should-use \
    zsh-users/zsh-autosuggestions \
    atload"bindkey '^[[A' history-substring-search-up; \
           bindkey '^[[B' history-substring-search-down; \
           bindkey -M vicmd 'k' history-substring-search-up; \
           bindkey -M vicmd 'j' history-substring-search-down" \
    zsh-users/zsh-history-substring-search \
    zsh-users/zsh-syntax-highlighting

[[ -f $ZDOTDIR/local.zsh ]] && source $ZDOTDIR/local.zsh

# Show feelings "calendar"
feeling

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
