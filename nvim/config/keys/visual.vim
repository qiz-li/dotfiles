" -----------
" Visual mode
" -----------

" Ctrl + [/] indent text while remaining selected
vnoremap <C-]> >gv
vnoremap <C-[> <gv

" Shift + K/J move selected text up/down
vnoremap <silent>K :m '<-2<CR>gv-gv
vnoremap <silent>J :m '>+1<CR>gv-gv

" Ctrl + C copy selected to universal pasteboard
vnoremap <C-c> :w !pbcopy<CR><CR>
