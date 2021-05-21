# Path to dotfiles.
export ZDOTDIR=$HOME/dotfiles/zsh

# GitHub token
export GITHUB_TOKEN=$(security find-generic-password -s 'GitHub Token' -w)

# Fix issues with Git GPG signing
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
