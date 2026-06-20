#!/bin/bash
# Sends a desktop notification when Claude Code finishes.
# Uses OSC 777 for Ghostty (per-tab), falls back to osascript for other terminals.

MSG="${1:-Notification}"

# Walk up process tree to find an ancestor with a real TTY
PID=$$
TTY=""
TERM_APP=""
while [ "$PID" != "1" ] && [ -n "$PID" ]; do
  T=$(ps -o tty= -p "$PID" 2>/dev/null | tr -d ' ')
  if [ -n "$T" ] && [ "$T" != "??" ] && [ -e "/dev/$T" ]; then
    TTY="/dev/$T"
    break
  fi
  PID=$(ps -o ppid= -p "$PID" 2>/dev/null | tr -d ' ')
done

# Detect terminal by checking environment of the ancestor process
if [ -n "$TTY" ]; then
  ANCESTOR_PID=$PID
  while [ "$ANCESTOR_PID" != "1" ] && [ -n "$ANCESTOR_PID" ]; do
    COMM=$(ps -o comm= -p "$ANCESTOR_PID" 2>/dev/null)
    case "$COMM" in
      *ghostty*) TERM_APP="ghostty"; break ;;
      *Cursor*|*cursor*) TERM_APP="cursor"; break ;;
    esac
    ANCESTOR_PID=$(ps -o ppid= -p "$ANCESTOR_PID" 2>/dev/null | tr -d ' ')
  done
fi

if [ "$TERM_APP" = "ghostty" ] && [ -n "$TTY" ]; then
  printf '\033]777;notify;Claude Code;%s\007' "$MSG" > "$TTY"
else
  osascript -e "display notification \"$MSG\" with title \"Claude Code\""
fi
