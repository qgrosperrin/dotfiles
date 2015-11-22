syntax enable

set ruler
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4

filetype plugin indent on

" Numbers
set number
set numberwidth=5

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

set history=50
set incsearch                   " Do incremental searching
set showcmd

set autowrite                   " Automatically :write before running commands
set nobackup
set nowritebackup

" Requires vim 7.4
set clipboard=unnamed

set backspace=indent,eol,start

" Always use vertical diffs
set diffopt+=vertical
