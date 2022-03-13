" ------------------------
" Spell check (Leader + c)
" ------------------------

" Leader + c + t toggle spell check
nnoremap <Leader>cc :setlocal spell!<CR>

" Leader + c + e/f set English/French
nnoremap <Leader>ce :setlocal spelllang=en<CR>
nnoremap <Leader>cr :setlocal spelllang=fr<CR>

" Ctrl + . for suggestions (similar to VSCode)
nnoremap <Leader>. z=
