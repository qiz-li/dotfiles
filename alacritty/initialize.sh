#! /bin/zsh

# Copy files to config direction device is on WSL
# Symlinking does not work as Windows cannot read Linux symlinks
if grep -qEi "(Microsoft|WSL)" /proc/version &>/dev/null; then
    ALACRITTY_CONFIG_DIR=/mnt/c/Users/"$USER"/AppData/Roaming/alacritty
    device='windows'
    operation='cp'
    include_path='C:\\Users\\'"$USER"'\\appdata\\roaming\\alacritty\\'
# Symlink config files if device is on macOS
elif [[ "$OSTYPE" = "darwin"* ]]; then
    ALACRITTY_CONFIG_DIR="$HOME"/.config/alacritty
    device='mac'
    operation='ln'
    flag='-sf'
    include_path="$ALACRITTY_CONFIG_DIR"/
else
    echo "Alacritty config does not support your device." >&2
    exit 1
fi

# Creat Alacritty config directory
! [[ -d "$ALACRITTY_CONFIG_DIR" ]] && mkdir -p "$ALACRITTY_CONFIG_DIR"

link_alacritty_config() {
    if ! [[ -f $2 ]] || ! diff -sq "$1" "$2" &>/dev/null; then
        "$operation" ${flag:+$flag} "$1" "$2"
    fi
}

link_alacritty_config "$DOTDIR"/alacritty/general.yml \
    "$ALACRITTY_CONFIG_DIR"/general.yml

link_alacritty_config "$DOTDIR"/alacritty/"$device".yml \
    "$ALACRITTY_CONFIG_DIR"/device.yml

# Load into alacritty.yml
if ! [[ -f "$ALACRITTY_CONFIG_DIR"/alacritty.yml ]]; then
    {
        echo "import:"
        echo "  - $include_path""general.yml"
        echo "  - $include_path""device.yml"
    } >"$ALACRITTY_CONFIG_DIR"/alacritty.yml
fi
