# .*dot*files.

```shell
# Install
cd && git clone https://github.com/qiz-li/dotfiles.git && ./dotfiles/install/install.sh && zsh
```

![Screenshot of shell and Vim](images/screenshot.png)

- [`alacritty`](https://github.com/alacritty/alacritty) - Terminal emulator written in Rust
  - [`ayu`](https://github.com/ayu-theme/ayu-colors) - Simple, bright, and elegant theme
- [`git`](https://github.com/git/git) - The version control system
- [`neovim`](https://github.com/neovim/neovim) - Vim-fork focused on extensibility and usability
  - [`vim-plug`](https://github.com/junegunn/vim-plug) - Minimalistic Vim plugin manager
    - [`ale`](https://github.com/dense-analysis/ale) - Linting engine for Neovim
      - [`autopep8`](https://github.com/hhatto/autopep8) - Formatter for Python to match PEP 8 style guide
      - [`flake8`](https://github.com/PyCQA/flake8) - Linter for Python files
      - [`shellcheck`](https://github.com/koalaman/shellcheck) - Analysis tool for shell scripts
      - [`yamllint`](https://github.com/adrienverge/yamllint) - Linter for YAML files
    - [`ayu`](https://github.com/ayu-theme/ayu-vim) - Ayu theme, Vim edition
    - [`commentary`](https://github.com/tpope/vim-commentary) - Quick and easy way to comment stuff out
    - [`fugative`](https://github.com/tpope/vim-fugitive) - Awesome Git wrapper for Vim
    - [`gitgutter`](https://github.com/airblade/vim-gitgutter) - Git diff markers in Vim gutter
    - [`goyo`](https://github.com/junegunn/goyo.vim) - Zen mode in Vim
    - [`limelight`](https://github.com/junegunn/limelight.vim) - Focus-enhancing text highlighting
    - [`polyglot`](https://github.com/sheerun/vim-polyglot) - Solid language pack for syntax highlighting
    - [`surround`](https://github.com/tpope/vim-surround) - Quickly and easy way to surround stuff with quotes, brackets+
- [`pandoc`](https://github.com/jgm/pandoc) - Universal document converter
  - [`wr`](pandoc/wr.sh) - Custom Markdown <-> DOCX conversion script
- [`nvm`](https://github.com/nvm-sh/nvm) - Node Version Manager
  - [`node`](https://github.com/nodejs/node) - Server-side JavaScript runtime environment
  - [`npm`](https://github.com/npm/cli) - The package manager for JavaScript
- [`zsh`](https://github.com/zsh-users/zsh) - Powerful interactive shell and scripting interpreter
  - [`antigen`](https://github.com/zsh-users/antigen) - Easy-to-use-Zsh plugin manager
    - [`autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions) - Useful auto-completion based on history
    - [`common`](https://github.com/jackharrisonsherlock/common) - Simple and clean Zsh prompt
    - [`feeling`](https://github.com/qiz-li/feeling) - Feelings calendar
    - [`syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting) - Fish-like beautiful syntax highlighting
    - [`you-should-use`](https://github.com/MichaelAquilina/zsh-you-should-use) - Helpful alias suggestions
  - [`autojump`](https://github.com/wting/autojump) - Quick directory navigation that learns off history
  - [`fzf`](https://github.com/junegunn/fzf) - Command-line fuzzy finder

> Readme format heavily inspired by [`@kutsan`](https://github.com/kutsan)/[`dotfiles`](https://github.com/kutsan/dotfiles)
