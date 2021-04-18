"  ___ _        _             _    _
" / __| |_ __ _| |_ _  _ ___ | |  (_)_ _  ___
" \__ \  _/ _` |  _| || (_-< | |__| | ' \/ -_)
" |___/\__\__,_|\__|\_,_/__/ |____|_|_||_\___|

set statusline=
set statusline+=%1*\ %v\                    " Column number
set statusline+=%2*%{&spell?'\ Spell\ ':''} " Wether in spell check mode
set statusline+=%3*\ %t\                    " Short file name
set statusline+=%3*%M                       " If file modified

