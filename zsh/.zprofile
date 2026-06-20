# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# pipx
export PATH="$PATH:$HOME/.local/bin"

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 17 2>/dev/null)
