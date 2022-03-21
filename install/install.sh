#!/bin/bash

# Path to dotfiles
export DOTDIR=$HOME/dotfiles

# Ask for user permission
read -rp "This will overwrite existing files. Are you sure? (y/n) " -n 1
echo
echo "-------------------"
if ! [[ $REPLY =~ ^[Yy]$ ]]; then
    exit 0
fi

# Use diffrent package managers depending on OS
case "$OSTYPE" in
"darwin"*)
    brew install python3
    # Tap into brew fonts
    # Needed for font installation
    brew tap homebrew/cask-fonts
    ;;
"linux-gnu"*)
    sudo apt install -y python3
    sudo apt install -y python3-pip
    ;;
*)
    echo "Sorry, OS is not supported."
    exit 1
    ;;
esac
echo "-------------------"

# Install Python dependencies
# in order to run the install packages script
python3 -m pip install pyYaml
python3 "$DOTDIR"/install/install_packages.py
echo "--------------------------"

# Symlink files
printf "Symlinking config files...\n"
# Zsh
ln -sf "$DOTDIR"/zsh/.zshenv "$HOME"/.zshenv
ln -sf "$DOTDIR"/zsh/.zshrc "$HOME"/.zshrc
# Configs
# -
! [[ -d $HOME/.config ]] && mkdir "$HOME"/.config
# Alacritty
"$DOTDIR"/alacritty/initialize.sh
# Neovim
ln -snf "$DOTDIR"/nvim "$HOME"/.config/nvim
ln -snf "$DOTDIR"/pandoc "$HOME"/.pandoc
# Git
read -rp "Do you want to sync Git settings? Username will be set to qiz-li (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    ln -sf "$DOTDIR"/git/.gitconfig "$HOME"/.gitconfig
    ln -sf "$DOTDIR"/git/.gitignore "$HOME"/.gitignore
    echo "Git settings synced."
else
    echo "Git settings not synced."
fi
# SSH
read -rp "Do you want to sync SSH settings? Username will be set to qiz-li (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    ln -sf "$DOTDIR"/ssh/config "$HOME"/.ssh/config
    if ! [[ -f $HOME/.ssh/private_keys/github_ed25519 ]]; then
        read -rp "Do you want to generate a SSH key for GitHub (y/n) " -n 1
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            read -rp "Enter your email: " email
            ssh-keygen -t ed25519 -C "$email" -f "$HOME"/.ssh/private_keys/github_ed25519
            mv "$HOME"/.ssh/private_keys/github_ed25519.pub \
                "$HOME"/.ssh/public_keys/github_ed25519.pub
            echo "Copy your public key to GitHub:"
            cat "$HOME"/.ssh/public_keys/github_ed25519.pub
        fi
    fi
    echo "SSH settings synced."
else
    echo "SSH settings not synced."
fi
echo "--------------------------"

# Change shell to Zsh
[[ $SHELL == "/bin/zsh" ]] || chsh -s /bin/zsh

echo "Process finished! 🎉"
