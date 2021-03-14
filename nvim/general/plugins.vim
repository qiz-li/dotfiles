" All plugins used in Neovim, managed with vim-plug

call plug#begin('~/.config/nvim/autoload/plugged')

    " Files
    " -----
    " File explorer
    Plug 'scrooloose/NERDTree'
    " Improved status bar
    Plug 'vim-airline/vim-airline'

    " Syntax
    " ------
    " CoC intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better syntax support
    Plug 'sheerun/vim-polyglot'
    " Running code
    Plug 'sbdchd/vim-run'

    " Editor
    " ------
    " Zen mode
    Plug 'junegunn/goyo.vim'

    " Themes
    " ------
    " One Dark 
    Plug 'joshdick/onedark.vim'
    " Gruvbox 
    Plug 'morhetz/gruvbox'
    " Nord
    Plug 'arcticicestudio/nord-vim'

call plug#end()

" Auto-install missing plugins
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
