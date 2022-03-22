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

# Loads nvm
load_nvm() {
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" ||
        printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
}
load_nvm
# Install nvm, if not already installed
if ! command -v nvm &>/dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    load_nvm
    # Install Node.js
    nvm install stable
fi

case "$OSTYPE" in
"darwin"*)
    # Initialize autojump
    [ -f $(brew --prefix)/etc/profile.d/autojump.sh ] &&
        . $(brew --prefix)/etc/profile.d/autojump.sh
    ;;
"linux"*)
    # Initialize autojump
    . /usr/share/autojump/autojump.sh
    # Initailize Alacritty config if on WSL
    grep -qEi "(Microsoft|WSL)" /proc/version &>/dev/null && "$DOTDIR"/alacritty/initialize.sh
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
