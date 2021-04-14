" All general settings in Neovim

set encoding=utf-8
scriptencoding utf-8

syntax enable                           " Enables syntax highlighting
let mapleader=','                       " Much better leader key
set autowrite autowriteall              " Auto write/save

set cursorline                          " Highlight current line
set number relativenumber               " Relative line numbers
set list listchars+=space:·,trail:·     " Show spaces as dots
set tabstop=4 shiftwidth=4 expandtab    " Tabs as four spaces

" Stop automatic comment continuation
augroup NO_COMMENT
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END

