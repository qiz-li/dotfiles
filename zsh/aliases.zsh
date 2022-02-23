# General. E.g.
# l (ls), la (ls -al)...
antigen bundle common-aliases

# Git specific. E.g.
# gss (status), gc (comit), gp (push)...
antigen bundle git

# V as nvim to quickly open files
alias v="nvim"

# Use gnu versions of tools
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias sed="gsed"
    alias date="gdate"
fi
