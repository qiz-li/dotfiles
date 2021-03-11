" All custom keybindings in Neovim

" User ctrl + hjkl to switch between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use ctrl + n to open NERDTree
nnoremap <C-n>    :NERDTreeToggle<CR>

" Switching between buffers with ctrl + p/w
nnoremap <C-p>    :ls<CR>:b<Space>
nnoremap <C-w>    :bn<CR>

" Easier Neovim config reload
nnoremap <Leader>vr :source $MYVIMRC<CR>
