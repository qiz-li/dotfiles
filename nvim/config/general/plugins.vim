"  ____  _             _
" |  _ \| |_   _  __ _(_)_ __  ___
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/

" Install vim-plug if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

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

" Better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Ayu theme
Plug 'ayu-theme/ayu-vim'

" ------
" Editor
" ------

" In-editor linting
Plug 'dense-analysis/ale'
" Commenting code
Plug 'tpope/vim-commentary'
" Easily surround code in quotes
Plug 'tpope/vim-surround'

" -------
" Writing
" -------
" Zen mode
Plug 'junegunn/goyo.vim'
" Only highlight current part
Plug 'junegunn/limelight.vim'

call plug#end()
