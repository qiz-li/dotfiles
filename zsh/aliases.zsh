# V as nvim to quickly open files
alias v="nvim"

# Use gnu versions of tools
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias sed="gsed"
    alias date="gdate"
fi
