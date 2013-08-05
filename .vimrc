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

"Tab delele on backspace
set smarttab

"Syntax
syntax on

"Allow mouse
set mouse=a

"Always Show statusline
set laststatus=2

"Mapping
noremap <C-E> :NERDTreeToggle <CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-M> :NERDTreeFind <CR>
noremap <C-F> :Ack 
map <C-L> \c<space>
inoremap jk <esc>

"Disabling Arrow Keys
nnoremap <LEFT> <nop>
nnoremap <DOWN> <nop>
nnoremap <UP> <nop>
nnoremap <RIGHT> <nop>

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

"CtrlP default search type: filename
let g:ctrlp_by_filename = 1

"Ignoring files and dirs in ctrlp.vim (use according to your need)
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|docs|tmp)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }

"Ctags - put here the path of your file tags or comment/delete the line
set tags=/var/www/MyProject/tags
