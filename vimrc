" no compatibility with vi
set nocompatible

" syntax highlighting
syntax on
if has("gui_running")
	colors desert
	" line numbers color
	hi LineNr guifg=grey45 guibg=grey20
endif

" enable filetype plugins and indents
filetype on
filetype plugin on
filetype indent on

set ttyfast

set tabstop=4 shiftwidth=4 softtabstop=4 autoindent smartindent
set backspace=indent,eol,start

" prefer unix over windows over mac formats
set ffs=unix,dos,mac

" utf-8 default encoding
set enc=utf-8

" insert mode by default
set insertmode

" show line numbers
set number

" read file again, if it was changed outside of vim
set autoread

" open/save/close
ino <C-e> <C-o>:e!<Space>
ino <F2> <C-o>:w<CR>
ino <C-s> <C-o>:w<CR>
ino <C-q> <C-o>:q!<CR>

" some usefull hotkeys from my Eclipse
ino <C-d> <C-o>dd

" move lines in normal, insert and visual modes
nno <A-Down> :m+<CR>==
ino <A-Down> <Esc>:m+<CR>==gi
vno <A-Down> :m'>+<CR>gv=gv
nno <A-Up> :m-2<CR>==
ino <A-Up> :m-2<CR>==gi
vno <A-Up> :m-2<CR>gv=gv

" tab management
ino <silent><C-t> <C-o>:tabnew<CR>
ino <silent><C-Tab> <C-o>:tabnext<CR>
ino <silent><C-S-Tab> <C-o>:tabprevious<CR>
ino <silent><C-w> <C-o>:silent! tabclose<CR>
nno <silent><C-w> :silent! tabclose<CR>

" undo/redo
ino <C-z> <C-o>:undo<CR>
ino <C-y> <C-o>:redo<CR>

" selection, cut/copy/paste
so $VIMRUNTIME/mswin.vim

" don't bell or blink
set noeb
set vb t_vb=

