"  ____       _   _   _
" / ___|  ___| |_| |_(_)_ __   __ _ ___
" \___ \ / _ \ __| __| | '_ \ / _` / __|
"  ___) |  __/ |_| |_| | | | | (_| \__ \
" |____/ \___|\__|\__|_|_| |_|\__, |___/
"                             |___/

set encoding=utf-8                      " Utf-8 character encoding

syntax enable                           " Enables syntax highlighting
let mapleader=' '                       " Use space as leader key
set autowrite autowriteall              " Auto write/save

set cursorline                          " Highlight current line
set number relativenumber               " Relative line numbers
set list listchars+=space:·,trail:·     " Show spaces as dots
set tabstop=2 shiftwidth=2 expandtab    " Tabs as two spaces

" Stop automatic comment continuation
augroup NO_COMMENT
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
