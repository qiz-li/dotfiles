" Stop Netrw from creating [No Name] buffers
augroup AutoDeleteNetrwHiddenBuffers
  au!
  au FileType netrw setlocal bufhidden=wipe
augroup end

" Shortcut to toggle
map <silent> <C-E> :Lexplore!<CR>

" Hide dotfiles by default
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" Remove the somewhat annoying banner
let g:netrw_banner = 0

" Set width
let g:netrw_winsize = 25

" Tree list style
let g:netrw_liststyle = 3

