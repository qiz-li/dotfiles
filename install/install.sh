#!/bin/bash

# Path to dotfiles
export DOTDIR=$HOME/dotfiles

# Ask for user permission
read -rp "This will overwrite existing files. Are you sure? (y/n) " -n 1
echo
echo "-------------------"
if [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 0
fi

# Use diffrent package managers depending on OS
case "$OSTYPE" in
"darwin"*)
    brew install python3
    ;;
"linux-gnu"*)
    sudo apt install python3
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
python3 install_packages.py
echo "--------------------------"

# Symlink files
printf "Symlinking config files...\n"
# Zsh
rm "$HOME"/.zshenv
ln -s "$DOTDIR"/zsh/.zshenv "$HOME"/.zshenv
# Alacritty
rm -rf "$HOME"/.config/alacritty
ln -s "$DOTDIR"/alacritty "$HOME"/.config/alacritty
# Neovim
rm -rf "$HOME"/.config/nvim
ln -s "$DOTDIR"/nvim "$HOME"/.config/nvim
echo "--------------------------"

# Change shell to Zsh
[[ $SHELL == "/bin/zsh" ]] || chsh -s /bin/zsh

echo "Process finished! 🎉"
