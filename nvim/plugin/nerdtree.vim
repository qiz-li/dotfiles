" Configuration for NERD Tree plugin

" Default on the right
let g:NERDTreeWinPos = "right"

" Hide unnecessary things
let NERDTreeMinimalUI = 1

" Show hidden files
let NERDTreeShowHidden=1

" Disable arrow
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" No need to show path, already in Airline
augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3
          \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
	      \ | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
          \ | setlocal concealcursor=n
augroup end

