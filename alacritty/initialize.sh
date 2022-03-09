#! /bin/bash

set -e
# Device is on WSL
if grep -qEi "(Microsoft|WSL)" /proc/version &>/dev/null; then
    ALACRITTY_CONFIG_DIR=/mnt/c/Users/"$USER"/AppData/Roaming/alacritty
    device='windows'
    dir_char='\'
# Device is on macOS
elif [[ "$OSTYPE" = "darwin"* ]]; then
    device='mac'
    ALACRITTY_CONFIG_DIR="$HOME"/.config/alacritty
    dir_char='/'
else
    echo "Alacritty config does not support your device." >&2
    exit 1
fi

# Creat Alacritty config directory
! [[ -d "$ALACRITTY_CONFIG_DIR" ]] && mkdir -p "$ALACRITTY_CONFIG_DIR"

# Link general config file
[[ -f "$ALACRITTY_CONFIG_DIR"/general.yml ]] && rm "$ALACRITTY_CONFIG_DIR"/general.yml
ln -s "$DOTDIR"/alacritty/general.yml "$ALACRITTY_CONFIG_DIR"/general.yml

# Link device specific config file
[[ -f "$ALACRITTY_CONFIG_DIR"/device.yml ]] && rm "$ALACRITTY_CONFIG_DIR"/device.yml
ln -s "$DOTDIR"/alacritty/"$device".yml "$ALACRITTY_CONFIG_DIR"/device.yml

# Load both into alacritty.yml
[[ -f "$ALACRITTY_CONFIG_DIR"/alacritty.yml ]] && rm "$ALACRITTY_CONFIG_DIR"/alacritty.yml
echo "import:" >>"$ALACRITTY_CONFIG_DIR"/alacritty.yml
dir_char=/
echo "  - $ALACRITTY_CONFIG_DIR$dir_char""general.yml" >>"$ALACRITTY_CONFIG_DIR"/alacritty.yml
echo "  - $ALACRITTY_CONFIG_DIR$dir_char""device.yml" >>"$ALACRITTY_CONFIG_DIR"/alacritty.yml
