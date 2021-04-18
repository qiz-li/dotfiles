" ----------------------------
" Buffers/windows (Leader + b)
" ----------------------------

" Leader + h/l switch between buffers
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>

" Leader + b + j/k delete/list buffers
nnoremap <Leader>bp :Buffers<CR>
nnoremap <Leader>bq :bd<CR>

" Leader + b + h/j/k/l resize windows
nnoremap <Leader>bk :resize -5<CR>
nnoremap <Leader>bj :resize +5<CR>
nnoremap <Leader>bh :vertical resize -5<CR>
nnoremap <Leader>bl :vertical resize +5<CR>

