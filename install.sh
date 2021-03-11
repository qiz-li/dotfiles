#!/bin/bash
#=================================
# Install script for macOS & Linux
# WARNING! This will replace your old config files!
#==================================================

# Change to dotfiles location
dotfiles=$HOME/dotfiles

# Packages to install, using brew on macOS and apt on Linux
packages=(wget git zsh nvim neofetch)

# Ask for user permission
read -rp "This will overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 0
fi

# Update packages if on Linux
if [ "$(uname)" == "Linux" ]; then
    echo "Updating packages, this might take a minute 📦"
    # sudo apt update
# Install Homebrew if on Mac
elif [ "$(uname)" == "Darwin" ]; then
    echo "Installing Homebrew 🍺"
    if ! brew --version &>/dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "Successfully installed Homebrew"
    else
        echo "Homebrew already installed"
    fi
else
    echo "Sorry, only macOS & Linux are supported"
    exit 1
fi

# Install packages
for package in "${packages[@]}"; do
    printf "\nInstalling %s\n" "$package"
    # Check if already installed
    if ! "$package" --version &>/dev/null; then
        if [ "$(uname)" == "Darwin" ]; then
            brew install "$package"
        else
            sudo apt install "$package"
        fi
        echo "Successfully installed $package"
    else
        echo "$package already installed"
    fi
done

# Configure Git credentials
if ! git config user.name &>/dev/null; then
    read -rp 'Git username: ' git_usrname
    git config --global user.name "$git_usrname"
fi
if ! git config user.email &>/dev/null; then
    read -rp 'Git email: ' git_email
    git config --global user.email "$git_email"
fi

printf "\nSymlinking·files·🗂\n"
# Create .config if it does not exist
if ! [ -d ~/.config ]; then
    mkdir ~/.config
fi
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
rm -rf ~/.config/alacritty
ln -s ~/dotfiles/alacritty ~/.config/alacritty
echo "Symlink done"

printf "\nInstalling Oh My Zsh theme & plugins 🎡\n"
# Remove old theme & plugins, if any
rm -rf "$dotfiles/zsh/themes"
rm -rf "$dotfiles/zsh/plugins"
mkdir "$dotfiles/zsh/themes"
mkdir "$dotfiles/zsh/plugins"
# Update and download newest versions
wget -O "$dotfiles/zsh/themes/common.zsh-theme" https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
git clone https://github.com/zsh-users/zsh-autosuggestions "$dotfiles/zsh/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$dotfiles/zsh/plugins/zsh-syntax-highlighting"
echo "Successfully installed theme & plugins"

printf "\nInstalling Oh My Zsh 🤩\n"
if ! [ -d "$ZSH" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Successfully installed Oh My Zsh"
else
    echo "Oh My Zsh already installed"
fi

printf "\nSetup complete 🎉\n"
