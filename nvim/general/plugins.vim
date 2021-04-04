" All plugins used in Neovim, managed with vim-plug

call plug#begin('~/.config/nvim/autoload/plugged')

    " Files
    " -----
    " Start screen
    Plug 'mhinz/vim-startify'
    " File explorer
    Plug 'preservim/nerdtree'
    " Git status on file tree
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " File icons
    Plug 'ryanoasis/vim-devicons'
    " File syntax highlighting
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Improved status bar
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Git
    " ---
    " Git diff
    Plug 'airblade/vim-gitgutter'
    " Git commands
    Plug 'tpope/vim-fugitive'

    " Syntax
    " ------
    " CoC intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better syntax support
    Plug 'sheerun/vim-polyglot'
    " Running code
    Plug 'sbdchd/vim-run'
    " Snippets
    Plug 'honza/vim-snippets'
" Editor
    " ------
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Highlight only current part
    Plug 'junegunn/limelight.vim'
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Used for yamllint
    Plug 'neomake/neomake'
    " Writing tool
    Plug 'reedes/vim-pencil'
    " Commenting code
    Plug 'tpope/vim-commentary'
    " Easily surround code in quotes
    Plug 'tpope/vim-surround'

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
