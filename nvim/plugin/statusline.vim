set statusline=
set statusline+=%1*\ %v\                    " Column number
set statusline+=%2*%{&spell?'\ Spell\ ':''} " Wether in spell check mode
set statusline+=%3*\ %t\                    " Short file name
set statusline+=%3*%M                       " If file modified

" Matches the Ayu light themes
hi User1 guibg=#399EE6 guifg=#FFFFFF
hi User2 guibg=#E6BA7E guifg=#FFFFFF
hi User3 guibg=#F0F0F0

