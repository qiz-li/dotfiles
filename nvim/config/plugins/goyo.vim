autocmd! User GoyoEnter set cursorline! | noremap <Leader>w :Goyo<CR>
autocmd! User GoyoLeave noremap <Leader>w :q<CR>

" Auto start Goyo if editing markdown or text files
" Added here because using ftplugin does not work for some reason
function! s:auto_goyo()
    if &ft == 'markdown' || &ft == 'text'
      Goyo 80
    elseif exists('#goyo')
      let bufnr = bufnr('%')
      Goyo!
      execute 'b '.bufnr
    endif
endfunction
autocmd BufEnter * call s:auto_goyo()
