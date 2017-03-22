" THEME
set encoding=utf8
set list

" Invisibles
set listchars=tab:▸\ ,eol:⨼

" Enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Enable cursor shape switching
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Syntax highlighting
set nowrap
set textwidth=0
syntax enable
set background=dark
colorscheme adventurous

let g:airline_theme="solarized"

" Some theming for ALE
hi ALEWarningSign ctermfg=70 ctermbg=NONE cterm=NONE guifg=#4BAE16 guibg=NONE gui=NONE
hi ALEErrorSign ctermfg=166 ctermbg=NONE cterm=NONE guifg=#D3422E guibg=NONE gui=NONE

" PERSO

filetype plugin on
set omnifunc=syntaxcomplete#Complete

NERDTree

colorscheme default

let g:gitgutter_map_keys=0

" END PERSO

" Indentation
filetype plugin indent on
set autoindent
set ts=2
set shiftwidth=2
set expandtab

" Max Width
set textwidth=0

" No wrapping except onmarkdown and html
set nowrap
autocmd FileType markdown setlocal wrap
autocmd FileType html setlocal wrap

" Make backspace usable
set backspace=indent,eol,start

" Show matching brackets
set showmatch

" Searching
set ignorecase
set hlsearch
set incsearch

" Smartcaps
set smartcase

" Statusbar
set ruler
set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" Scrolling
set scrolloff=2

" No code folding
set nofoldenable

" No Backup
set nobackup
set nowb
set noswapfile

" Line numbers
set number

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=vertical

" Italics support
set t_ZH=^[[3m
set t_ZR=^[[23m

