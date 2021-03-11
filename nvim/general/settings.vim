" All general settings in Neovim

let mapleader = ","                     " Much better leader key
syntax enable                           " Enables syntax highlighing
set number                              " Line numbers
set aw awa                              " Auto write/save
set nowrap                              " Display long lines as just one line
set laststatus=0                        " No need for status line
set formatoptions-=cro                  " Stop newline continution of comments
set ts=4 sw=4 sts=4 et                  " Tab as 4 spaces
set lcs+=space:·,trail:·                " Show spaces as dots
set list                                " Show spaces by default

au! BufWritePost $MYVIMRC source %      " Auto source after writing to init.vm

