#  ______   _____ _    _
# |___  /  / ____| |  | |
#    / /  | (___ | |__| |
#   / /    \___ \|  __  |
#  / /__   ____) | |  | |
# /_____| |_____/|_|  |_|

# Source Antigen from appropriate location
if [ "$(uname)" == "Darwin" ]; then
    source $(brew --prefix)/share/antigen/antigen.zsh
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    source /usr/share/zsh-antigen/antigen.zsh
fi

# Custom aliases
source $ZDOTDIR/.zalias

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

# Clean minimal prompt
antigen theme jackharrisonsherlock/common
# Enable colors and prompt expansion
autoload -U colors && colors
setopt promptsubst

antigen apply
