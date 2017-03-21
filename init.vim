call plug#begin('~/.config/nvim/plugged')
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'leafgarland/typescript-vim'
  Plug 'altercation/vim-colors-solarized'
  Plug 'elmcast/elm-vim'
call plug#end()

source ~/.vimrc
