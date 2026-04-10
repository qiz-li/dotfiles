#! /bin/zsh

# Ghostty config setup (macOS only)
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "Ghostty config only supports macOS." >&2
    exit 1
fi

GHOSTTY_CONFIG_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"

# Create config directory if needed
! [[ -d "$GHOSTTY_CONFIG_DIR" ]] && mkdir -p "$GHOSTTY_CONFIG_DIR"

# Symlink config file
if ! [[ -f "$GHOSTTY_CONFIG_DIR/config" ]] || \
    ! diff -sq "$DOTDIR/ghostty/config" "$GHOSTTY_CONFIG_DIR/config" &>/dev/null; then
    ln -sf "$DOTDIR/ghostty/config" "$GHOSTTY_CONFIG_DIR/config"
fi
