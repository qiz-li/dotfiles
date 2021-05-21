#!/bin/bash

# Zsh
# ---
rm ~/.zshenv
ln -s "$DOTDIR"/zsh/.zshenv ~/.zshenv

# Alacritty
# ---------
rm -rf ~/.config/alacritty
ln -s "$DOTDIR"/alacritty ~/.config/alacritty

# Neovim
# ------
rm -rf ~/.config/nvim
ln -s "$DOTDIR"/nvim ~/.config/nvim
