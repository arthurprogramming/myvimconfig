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

"No Wrap
set nowrap

"Mapping
noremap <C-E> :NERDTreeToggle <CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <C-M> :NERDTreeFind <CR>
map <C-L> \c<space>
inoremap jk <esc>
noremap <F3> :tabnew <CR>
nnoremap <C-J> ddp==
nnoremap <C-K> ddkP==

"Avoid typo
command Q q
command Qa qa
command W w

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

"CtrlP
"default search type: filename
let g:ctrlp_by_filename = 1
"Ignoring files and dirs in ctrlp.vim (use according to your need)
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](docs|tmp)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }

let g:ctrlp_match_window = 'results:100'

"Text diff in gray color
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black 

"Snippets
let g:UltiSnipsSnippetDirectories = ["UltiSnips", $HOME ."/myvimconfig/mysnippets"]

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'

"phpcomplete
au FileType php set omnifunc=phpcomplete#CompletePHP
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_complete_for_unknown_classes = 1
set completeopt=longest,menuone

"preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_php_checkers = ['php']

function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffIt call s:DiffWithSaved()

function! s:LintBuffer()
    silent w! /tmp/%:t
    "silent !php -l /tmp/%:t > /tmp/lintresult
    !php -l /tmp/%:t > /tmp/lintresult
    "silent pedit /tmp/lintresult
endfunction
com! LintIt call s:LintBuffer()
