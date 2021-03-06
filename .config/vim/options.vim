set number
set title
set showmatch
set cursorline
set backspace=indent,eol,start
set noswapfile
set ambiwidth=double
set wildmenu
set hidden
set nrformats=

" indent
set tabstop=4
set smartindent
set autoindent
set expandtab
set shiftwidth=4
set list listchars=tab:\▸\-

" status
set showcmd

" search
set hlsearch
set incsearch
set ignorecase
set smartcase
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" no sounds
set visualbell t_vb=
set noerrorbells

" colors
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
