" All plugins used in Neovim, managed with vim-plug

call plug#begin('~/.config/nvim/autoload/plugged')

    " Files
    " -----
    " File explorer
    Plug 'preservim/nerdtree'
    " Git status on file tree
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " File icons
    Plug 'ryanoasis/vim-devicons'
    " File syntax highlighting
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
    " Highlight only current part
    Plug 'junegunn/limelight.vim'

    " Themes
    " ------
    " One Dark 
    Plug 'joshdick/onedark.vim'
    " Gruvbox 
    Plug 'morhetz/gruvbox'
    " Nord
    Plug 'arcticicestudio/nord-vim'

    " Git
    " ---
    " Git diff
    Plug 'mhinz/vim-signify'
    " Git commands
    Plug 'tpope/vim-fugitive'


call plug#end()

" Auto-install missing plugins
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
