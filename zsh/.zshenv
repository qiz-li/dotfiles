# Path to dotfiles
export DOTDIR=~/dotfiles

# Path to Zsh config
export ZDOTDIR=$DOTDIR/zsh

# Fix issues with Git GPG signing
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

# Use vim as editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
