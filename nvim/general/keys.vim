" All custom keybindings in Neovim

" File navigation
" ---------------

" Use ctrl + m to open NERDTree
nnoremap <C-m> :NERDTreeToggle<CR>

" User ctrl + hjkl to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switching between and exiting buffers
nnoremap <C-p> :ls<CR>:b<Space>
nnoremap <C-w> :bn<CR>
nnoremap <Leader>q :bd<CR>:bn<CR>

" Terminal
" --------

" Open/exit Neovim terminal
nnoremap <C-t> :bel sp term://zsh<CR>i
tnoremap <C-t> <C-\><C-n>:q<CR>

" Editor
" ------

" Easy CAPS
inoremap <C-u> <ESC>g~iw
nnoremap <C-u> g~iw<Esc>

" Clear screen search highlighting
nnoremap <C-l> :noh<CR>

" Visual mode indent text like VSCode
vmap <C-]> >gv
vmap <C-[> <gv

" Zen mode
nnoremap <C-k>z :Goyo<CR>
" Neovim general
" --------------

" Close Neovim
nnoremap <C-k>f :wq!<CR>

" Easier Neovim config reload
nnoremap <Leader>vr :source $MYVIMRC<CR>
