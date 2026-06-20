#! /bin/zsh

CLAUDE_DIR="$HOME/.claude"
CLAUDE_SCRIPTS_DIR="$CLAUDE_DIR/scripts"

# Create directories if needed
! [[ -d "$CLAUDE_DIR" ]] && mkdir -p "$CLAUDE_DIR"
! [[ -d "$CLAUDE_SCRIPTS_DIR" ]] && mkdir -p "$CLAUDE_SCRIPTS_DIR"

# Symlink settings
ln -sf "$DOTDIR/claude/settings.json" "$CLAUDE_DIR/settings.json"

# Symlink scripts
ln -sf "$DOTDIR/claude/scripts/notify.sh" "$CLAUDE_SCRIPTS_DIR/notify.sh"
