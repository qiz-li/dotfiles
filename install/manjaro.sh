#!/bin/bash

# Packages to install via pacman
packages=(
          # See Brewfile for explanation
          neovim
          bat
          fzf
          nerd-fonts-fira-code
          yamllint
          shellcheck

          git

          zsh
          neofetch
          alacritty

          # Manjaro specific
          chromium
      )

sudo pacman -SyU

for package in "${packages[@]}"; do
    sudo pacman -S "$package"
done
