" All plugins used in Neovim, managed with vim-plug

call plug#begin('~/.config/nvim/autoload/plugged')

    " Files
    " -----
    " Start screen
    Plug 'mhinz/vim-startify'
    " File icons
    Plug 'ryanoasis/vim-devicons'
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
    " In editor linting
    Plug 'dense-analysis/ale'
    " Writing tool
    Plug 'reedes/vim-pencil'
    " Commenting code
    Plug 'tpope/vim-commentary'
    " Easily surround code in quotes
    Plug 'tpope/vim-surround'

    " Themes
    " ------
    " Ayu
    Plug 'ayu-theme/ayu-vim'

call plug#end()

