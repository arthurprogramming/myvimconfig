"Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on
 
"No compatible with vi
set nocompatible

"Line number
set number

"Ruler
set ruler

"Tab size
set tabstop=4

"Tab size on autoindent
set shiftwidth=4

"Converts tab in spaces
set expandtab

"Syntax
syntax on

"Allow mouse
set mouse=a

"Always Show statusline
set laststatus=2

"Mapping
map <F2> :NERDTreeToggle <CR>
nmap <Tab> gt
nmap <S-Tab> gT
nmap ,m :NERDTreeFind<CR>


"Enabling 256 colors
set t_Co=256

"No backup files
set nobackup
set nowritebackup
set noswapfile

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

