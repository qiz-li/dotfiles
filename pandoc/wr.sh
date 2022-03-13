#! /bin/zsh

# Script for markdown & docx conversion
wr() {
    if [[ $# -eq 1 ]]; then
        nvim -c :Goyo "$1".md
    elif [[ $# -eq 2 ]]; then
        if [[ $1 = pull ]]; then
            pandoc "$2".docx -o "$2".md -s
        elif [[ $1 = push ]]; then
            pandoc "$2".md -o "$2".docx -f markdown-auto_identifiers
        else
            echo "Error: Invalid operation" >&2
            return 1
        fi
    else
        echo "Error: Too many arguments" >&2
        return 1
    fi
}
