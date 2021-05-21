#!/bin/bash

# Path to dotfiles
export DOTDIR=$HOME/dotfiles

# Ask for user permission
read -rp "This will overwrite existing files. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 0
fi

# If on Mac, use Brewfile to install packages
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew bundle install --file "$DOTDIR"/install/Brewfile
# If pacman exists, use it to install packages
elif which pacman; then
    ./install/manjaro.sh
fi

# Symlink files
./install/symlink.sh

# Change shell to Zsh
chsh -s /bin/zsh

echo "Process finished!"
