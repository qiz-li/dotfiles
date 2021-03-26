" Use the full screen
let g:goyo_height = '100%'
let g:goyo_width = '100%'

" Load with Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Quick shortcut to Goyo
nnoremap <silent><Leader>z :Goyo<CR>
