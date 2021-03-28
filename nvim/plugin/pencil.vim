" Soft line wrapping 
let g:pencil#wrapModeDefault = 'soft'

" Auto-start for Markdown & Text files
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'hard'})
  autocmd FileType text         call pencil#init()
augroup END

