" All custom keybindings in Neovim

" File navigation
" ---------------

" User ctrl + hjkl to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switching between and exiting buffers
nnoremap <silent><C-p> :ls<CR>:b<Space>
nnoremap <silent><C-w> :bn<CR>
nnoremap <silent><Leader>q :bd<CR>:bn<CR>

" Terminal
" --------

" Open/exit Neovim terminal
nnoremap <silent><C-t> :bel sp term://zsh<CR>i
tnoremap <silent><C-t> <C-\><C-n>:q<CR>

" Editor
" ------

" Revamp redo since ctrl + r is used to run code
nnoremap <C-y> <C-r>

" Easy CAPS
inoremap <C-u> <ESC>g~iw
nnoremap <C-u> g~iw<Esc>

" Clear screen search highlighting
nnoremap <silent><C-k>l :noh<CR>

" Visual mode indent text like VSCode
vnoremap <C-]> >gv
vnoremap <C-[> <gv

" Visual mode indent text like VSCode
vnoremap <silent>K :m '<-2<CR>gv-gv
vnoremap <silent>J :m '>+1<CR>gv-gv

" Neovim general
" --------------

" Classic save/close
nnoremap <silent><C-q> :q<CR>
nnoremap <silent><C-s> :w<CR>

" Easier Neovim config reload
nnoremap <silent><Leader>vr :source $MYVIMRC<CR>
