"  ____  _             _
" |  _ \| |_   _  __ _(_)_ __  ___
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/

call plug#begin('~/.config/nvim/autoload/plugged')

" -----
" Files
" -----

" FZF fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" ---
" Git
" ---

" Git gutter diffs
Plug 'airblade/vim-gitgutter'
" Git commands
Plug 'tpope/vim-fugitive'

" ------
" Syntax
" ------

" CoC intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Snippets
Plug 'honza/vim-snippets'
" Ayu theme
Plug 'ayu-theme/ayu-vim'

" ------
" Editor
" ------

" Zen mode
Plug 'junegunn/goyo.vim'
" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" In-editor linting
Plug 'dense-analysis/ale'
" Commenting code
Plug 'tpope/vim-commentary'
" Easily surround code in quotes
Plug 'tpope/vim-surround'

call plug#end()

