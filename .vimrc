syntax enable

set ruler
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch     " set show matching parenthesis

filetype plugin indent on
set pastetoggle=<F2>

" Numbers
set number
set numberwidth=5

" Make it obvious where 80 characters is
"set textwidth=80
"set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

set history=100
set hidden
set incsearch     " Do incremental searching
set hlsearch      " highlight search terms
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set showcmd

set autowrite     " Automatically :write before running commands
set nobackup
set nowritebackup
set noswapfile

" Requires vim 7.4
set clipboard=unnamed

nnoremap ; :
set backspace=indent,eol,start

