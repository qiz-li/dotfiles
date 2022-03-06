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

# Use Vi keybinds
bindkey -v

# -------
# Plugins
# -------

# Autojump, easily navigate through directories
case "$OSTYPE" in
"darwin"*)
    [ -f $(brew --prefix)/etc/profile.d/autojump.sh ] &&
        . $(brew --prefix)/etc/profile.d/autojump.sh
    ;;
"linux"*)
    . /usr/share/autojump/autojump.sh
    ;;
esac

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

[[ -f $ZDOTDIR/local.zsh ]] && source $ZDOTDIR/local.zsh

# Show feelings "calendar"
feeling
