" ----------------
" Git (Leader + g)
" ----------------

" Requires Git Fugitive
" Leader + g + s/c/p Git status/commit/push
nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gc :Git commit<CR>
nnoremap <Leader>gp :Git push<CR>

" Requires Gitgutter
" Leader + g + h toggle Git diff highlighint
nnoremap <silent><Leader>gh :GitGutterLineHighlightsToggle<CR>

