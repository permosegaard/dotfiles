scriptencoding utf-8

execute pathogen#infect()

filetype on
filetype plugin on
filetype indent on

set encoding=utf-8

set list
set listchars=eol:¬,extends:<,tab:\ \ ,precedes:>

set nobackup
set noswapfile

set backspace=indent,eol,start

set nu
set rnu " line numbers
set numberwidth=4 " line number column width

set scrolloff=2
set ignorecase
set hlsearch
set showmatch " show matches from searches
set wrapscan
set nowrap
set laststatus=2

set autoindent " autoindenting
set copyindent

set mouse=a " let's have some mousey goodness

set wildmenu
set wildmode=list:longest,full

set smarttab
set tabstop=4
set shiftwidth=4
set shiftwidth=4
set tabpagemax=100
set noexpandtab

set foldenable
set foldcolumn=1
set foldmethod=indent
set foldlevel=99
set foldlevelstart=0

setlocal spell spelllang=en_gb
set spell

set colorcolumn=100

" set the syntax on and colourscheme here
syntax on
colorscheme molokai

highlight ColorColumn ctermbg=52

" airline specific options
let g:airline_theme = "murmur"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#tab_nr_type = 1

call pathogen#helptags()
