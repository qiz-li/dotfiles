" /~~\
" |  __/~\\  //~\
"  \__/\_/ \/ \_/
"         _/ 

" No line highlighting inside Goyo
autocmd! User GoyoEnter set cursorline!
" Source vimrc after closing
" To fix colors that are changed after closing
autocmd! User GoyoLeave source $MYVIMRC

" Shortcut to start Goyo
nnoremap <silent><Leader>i :Goyo<CR>