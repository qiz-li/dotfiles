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
    flag='-s'
    include_path="$ALACRITTY_CONFIG_DIR"/
else
    echo "Alacritty config does not support your device." >&2
    exit 1
fi

# Creat Alacritty config directory
! [[ -d "$ALACRITTY_CONFIG_DIR" ]] && mkdir -p "$ALACRITTY_CONFIG_DIR"

# Link general config file
[[ -f "$ALACRITTY_CONFIG_DIR"/general.yml ]] && rm "$ALACRITTY_CONFIG_DIR"/general.yml
"$operation" ${flag:+$flag} "$DOTDIR"/alacritty/general.yml "$ALACRITTY_CONFIG_DIR"/general.yml

# Link device specific config file
[[ -f "$ALACRITTY_CONFIG_DIR"/device.yml ]] && rm "$ALACRITTY_CONFIG_DIR"/device.yml
"$operation" ${flag:+$flag} "$DOTDIR"/alacritty/"$device".yml "$ALACRITTY_CONFIG_DIR"/device.yml

# Load both into alacritty.yml
{
    echo "import:"
    echo "  - $include_path""general.yml"
    echo "  - $include_path""device.yml"
} >"$ALACRITTY_CONFIG_DIR"/alacritty.yml
