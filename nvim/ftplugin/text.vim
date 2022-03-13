" Soft line wrapping
set wrap linebreak nolist

" Spell check
set spell

" Custom statusline
setlocal statusline=%1*\ %{wordcount().words}\   " Word count
setlocal statusline+=%2*%{&spell?'\ Spell\ ':''} " Wether in spell check mode
setlocal statusline+=%3*\ %t\                    " Short file name
setlocal statusline+=%3*%M                       " If file modified

" Maps keys to move between soft wrapped lines
noremap j gj
noremap k gk
noremap $ g$
noremap ^ g^
noremap 0 g0
noremap I g^i
noremap A g$a

ALEDisable
