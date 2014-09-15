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
map <C-L> \c<space>
inoremap jk <esc>
noremap <F3> :tabnew <CR>

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

"CtrlP
"default search type: filename
let g:ctrlp_by_filename = 1
"Ignoring files and dirs in ctrlp.vim (use according to your need)
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|docs|tmp)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0
let g:ctrlp_match_window = 'results:100'

"Ctags
"search for tags file in current and parent path
"if unset uses 'tags' file in current path './tags'
set tags=./tags;,./../tags

"Text diff in gray color
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black 

"Fugitive
"Preventing many buffers are created useless
autocmd BufReadPost fugitive://* set bufhidden=delete

"Snippets
let g:UltiSnipsSnippetDirectories = ["UltiSnips", $HOME ."/myvimconfig/mysnippets"]

let g:SuperTabDefaultCompletionType = "context"
let g:phpcomplete_parse_docblock_comments = 1

"Set clipboard as default register
set clipboard=unnamedplus

"Getter and Setter template
let b:phpgetset_setterTemplate =
  \ "    \n" .
  \ "    /**\n" .
  \ "     * Set %varname%\n" .
  \ "     *\n" .
  \ "     * @param mixed %varname%\n" .
  \ "     */\n" .
  \ "    public function %funcname%($%varname%)\n" .
  \ "    {\n" .
  \ "        $this->%varname% = $%varname%;\n" .
  \ "        return $this;\n" .
  \ "    }"

let b:phpgetset_getterTemplate =
 \ "    \n" .
 \ "    /**\n" .
 \ "     * Get %varname%\n" .
 \ "     *\n" .
 \ "     * @return mixed\n" .
 \ "     */\n" .
 \ "    public function %funcname%()\n" .
 \ "    {\n" .
 \ "        return $this->%varname%;\n" .
 \ "    }"

"Mapping
vnoremap <C-W> :InsertGetterSetter <CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Cscope
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb

    "add any database in current directory
    if filereadable("cscope.out")
	cs add cscope.out
    endif
endif

nnoremap <F8> :cs reset <CR>
nnoremap <C-\>s :cs find s <cword><CR>
nnoremap <C-]> :cs find g <cword><CR>
nnoremap <C-\>c :cs find c <cword><CR>
nnoremap <C-F> :cs find t 
nnoremap <C-\>e :cs find e <cword><CR>
nnoremap <C-\>f :cs find f <cword><CR>
nnoremap <C-\>i :cs find i <cword><CR>
nnoremap <C-\>d :cs find d <cword><CR>
