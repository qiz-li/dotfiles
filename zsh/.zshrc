#  ______   _____ _    _
# |___  /  / ____| |  | |
#    / /  | (___ | |__| |
#   / /    \___ \|  __  |
#  / /__   ____) | |  | |
# /_____| |_____/|_|  |_|

# Install antigen package manager if missing
[[ ! -f $HOME/.antigen.zsh ]] && curl -L git.io/antigen > .antigen.zsh
source $HOME/.antigen.zsh

# Custom aliases
source $ZDOTDIR/.zalias

# -------
# Plugins
# -------

# List files upon changing directory
antigen bundle desyncr/auto-ls
# Only list files (no Git status)
AUTO_LS_COMMANDS=(ls)
# No newline at the end
AUTO_LS_NEWLINE=false

# Suggests an alias if exits
antigen bundle MichaelAquilina/zsh-you-should-use

# Auto-completion based on history
antigen bundle zsh-users/zsh-autosuggestions
# Change suggestion color so it is visible
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=7"

# Fish-like syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Clean minimal prompt
antigen theme jackharrisonsherlock/common
# Enable colors and prompt expansion
autoload -U colors && colors
setopt promptsubst

antigen apply

# Use Vi mode
bindkey -v
