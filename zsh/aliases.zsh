# V as nvim to quickly open files
alias v="nvim"

# Use gnu versions of tools
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias sed="gsed"
    alias date="gdate"
fi

# Claude Code: `claude` uses the Anthropic API, `claude-aws` uses Bedrock
claude-aws() {
    CLAUDE_CODE_USE_BEDROCK=1 AWS_REGION=us-east-1 AWS_PROFILE=claude-code \
        command claude "$@"
}
