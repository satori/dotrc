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

" open/save/close
ino <C-e> <C-o>:e!<Space>
ino <F2> <C-o>:w<CR>
ino <C-s> <C-o>:w<CR>
ino <C-q> <C-o>:q!<CR>

" some usefull hotkeys from my Eclipse
ino <C-d> <C-o>dd

" tab management
ino <silent><C-t> <C-o>:tabnew<CR>
ino <silent><C-Tab> <C-o>:tabnext<CR>
ino <silent><C-S-Tab> <C-o>:tabprevious<CR>
ino <silent><C-w> <C-o>:silent! tabclose<CR>
nno <silent><C-w> :silent! tabclose<CR>

" undo/redo
ino <C-z> <C-o>:undo<CR>
ino <C-y> <C-o>:redo<CR>

" selection
ino <S-Down> <C-o>V
vno <S-Down> <Down>
ino <S-Up> <C-o>V<Up>
vno <S-Up> <Up>
ino <S-Right> <C-o>v
vno <S-Right> <Right>
ino <S-Left> <Left><C-o>v
vno <S-Left> <Left>
ino <S-End> <C-o>v<End>
ino <S-Home> <C-o>v<Home>

" copy/paste
vno <C-c> y
ino <C-v> <C-o>P
ino <S-Insert> <C-o>P
vno <C-v> P
vno <S-Insert> P

" don't bell or blink
set noeb
set vb t_vb=
