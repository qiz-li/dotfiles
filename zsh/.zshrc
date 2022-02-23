#  ______   _____ _    _
# |___  /  / ____| |  | |
#    / /  | (___ | |__| |
#   / /    \___ \|  __  |
#  / /__   ____) | |  | |
# /_____| |_____/|_|  |_|

# Source Antigen from appropriate location
case "$OSTYPE" in
"darwin"*)
    source $(brew --prefix)/share/antigen/antigen.zsh
    ;;
"linux-gnu"*)
    source /usr/share/zsh-antigen/antigen.zsh
    ;;
esac

# Custom aliases
source $ZDOTDIR/aliases.zsh

# Use Vi keybinds
bindkey -v

# -------
# Plugins
# -------

# Suggests an alias if exists
antigen bundle MichaelAquilina/zsh-you-should-use

# Auto-completion based on history
antigen bundle zsh-users/zsh-autosuggestions

# Fish-like syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# For feelings
antigen bundle qiz-li/feeling@main

# Clean minimal prompt
antigen theme jackharrisonsherlock/common
# Enable colors and prompt expansion
autoload -U colors && colors
setopt promptsubst

antigen apply

source $ZDOTDIR/local.zsh
