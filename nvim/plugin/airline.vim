" Configuration for Airline plugin

" Powerline cool symbols
let g:airline_powerline_fonts = 1

" Enable tabline
let g:airline#extensions#tabline#enabled = 1

" Show only filename tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Rounded corners
let g:airline#extensions#tabline#left_sep = "\uE0B4"
let g:airline#extensions#tabline#left_alt_sep = "\uE0B5"
let g:airline#extensions#tabline#right_sep = ''
let g:airline_left_sep= "\uE0B4"
let g:airline_right_sep= ''

" No need to show mode in native Neovim, already in Airline
set noshowmode

" Bubblegum theme!
let g:airline_theme='minimalist'
