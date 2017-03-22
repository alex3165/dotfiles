call plug#begin('~/.config/nvim/plugged')
  Plug 'tpope/vim-repeat'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'Shougo/vimproc.vim', { 'do': 'make' }

  " Visual
  Plug 'philpl/vim-adventurous'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'sjl/vitality.vim'
  Plug 'sts10/vim-zipper'
  Plug 'roman/golden-ratio'

  " Navigation
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'justinmk/vim-dirvish'

  " Tools
  Plug 'tpope/vim-fugitive'
  Plug 'Valloric/ListToggle'

  " JS Syntax
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'mxw/vim-jsx'
  Plug 'ianks/vim-tsx'

  " TypeScript
  Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }

  " Syntax
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'haskell.vim', { 'for': 'haskell' }
  Plug 'ElmCast/elm-vim', { 'for': 'elm' }

  " Motions
  Plug 'Lokaltog/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'bronson/vim-visual-star-search'

  " Linting
  Plug 'w0rp/ale'

  " Completion
  Plug 'ervandew/supertab'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm i -g tern', 'for': 'javascript' }

call plug#end()

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.elm set filetype=elm

source ~/.vimrc
