" Custom layout
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['Sessions']       },
          \ { 'type': 'files',     'header': ['Recent']            },
          \ { 'type': 'dir',       'header': ['Current'] },
          \ { 'type': 'bookmarks', 'header': ['Bookmarks']      },
          \ ]

" Simple header
let g:startify_custom_header = ['Life is good.']

" Quick access bookmarks
let g:startify_bookmarks = [
            \ { 'd': '~/dotfiles' },
            \ { 'p': '~/documents/code/ilzq' },
            \ { 'h': '/volumes/config' },
            \ ]

" Hide current buffer 0
let g:startify_enable_special = 0

" Limit file numbers
let g:startify_files_number = 5
