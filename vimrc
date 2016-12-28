"vimrc (user setting)
"Common Settings

set nocompatible
set nowrap
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noswapfile
set nobackup
set number
set autoindent
set modeline
set fileencoding=utf8
set hlsearch
set incsearch
set cursorline
set t_Co=256
set laststatus=2
filetype plugin indent on
syntax on
set clipboard=unnamedplus

"Enable pathogen - Run time plugins

execute pathogen#infect()

"Auto close scratch preview

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Shorcut key mapping

"Ctrl + a -> Select All Text
map <C-a> <esc>ggVG<CR>
"F2 to write/update file
nnoremap <F2> :update <CR>
"Ctrl + Space -> popup autocomplete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
"Switch tab bar
noremap <C-Right> gt
noremap <C-Left> gT
"UNDO and REDO
nnoremap <C-z> u
nnoremap <C-y> <C-r>
"Close VIM no save
map <silent> <C-w> :q! <CR>
"Toggle Show/Hide NERDTree Explorer
map <silent> <C-n> :NERDTreeToggle % <CR>
"Toggle Show/Hide Taglist
map <silent> <C-l> :TlistToggle <CR>
"Visual mode -> quickly Tabs indent multiple line
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"Misc - Config

autocmd vimenter * if !argc() | NERDTree | endif
let g:NERDTreeShowHidden=1
let Tlist_Auto_Update=1
let g:jedi#show_call_signatures = "0"
autocmd Filetype java setlocal omnifunc=javacomplete#Complete

"Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"Vim Theme
colors molokai
let g:molokai_original = 1
let g:rehash256 = 1
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active' : {
      \     'left' : [ [ 'mode' ], [ 'filename' ], [ 'mod' ] ]
      \ },
      \ 'component': {
      \     'filename': '"%{expand("%:p:t")}"',
      \     'mod'     : '%{&readonly?"[readonly]":&modified?"+":""}'
      \ }
      \ }

"-------- END CONFIG ----------"

