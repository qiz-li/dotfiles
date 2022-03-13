" _____      _ _         _
"|_   _|    (_) |       (_)
"  | | _ __  _| |___   ___ _ __ ___
"  | || '_ \| | __\ \ / / | '_ ` _ \
" _| || | | | | |_ \ V /| | | | | | |
" \___/_| |_|_|\__(_)_/ |_|_| |_| |_|

" General settings
source $HOME/.config/nvim/config/general/settings.vim

" Plugins ( Plugin configs are in config/plugins/)
source $HOME/.config/nvim/config/general/plugins.vim
for rcfile in split(globpath('~/.config/nvim/config/plugins', '*.vim'), '\n') 
  execute('source '.rcfile)
endfor

" Ayu theme
source $HOME/.config/nvim/config/general/theme.vim

" Custom keybinds
for rcfile in split(globpath('~/.config/nvim/config/keys', '*.vim'), '\n') 
  execute('source '.rcfile)
endfor
