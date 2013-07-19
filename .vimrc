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
map <F12> :NERDTreeFromBookmark 
map <C-E> :NERDTreeToggle <CR>
nmap <Tab> gt
nmap <S-Tab> gT
nmap <C-M> :NERDTreeFind<CR>
map <C-F> :Ack 
map <C-L> \c<space>


"Enabling 256 colors
set t_Co=256

"Setting right margin
set colorcolumn=80

"No backup files
set nobackup
set nowritebackup
set noswapfile

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"Ignoring files and dirs in ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|conny|release|solrslave|tools|docs|tmp|data)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }
