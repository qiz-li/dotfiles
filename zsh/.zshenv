# Path to dotfiles
export DOTDIR=~/dotfiles

# Path to Zsh config
export ZDOTDIR=$DOTDIR/zsh

# Fix issues with Git GPG signing
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

# Use Neovim as default editor
export EDITOR='nvim'
