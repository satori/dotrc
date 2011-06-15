setlocal expandtab
ino <buffer><silent> ( ()<Left>
ino <buffer><silent> [ []<Left>
ino <buffer><silent> { {}<Left>
au BufWritePre *.py :%s/\s\+$//e

function! <SID>PythonGrep(tool)
	setlocal lazyredraw
	cclose
	let l:grepformat_save = &grepformat
	let l:grepprogram_save = &grepprg
	setlocal grepformat&vim
	let &grepformat = '%f:%l:%m'
	if a:tool == "pylint"
		let &grepprg = 'pylint --output-format=parseable --reports=no'
	elseif a:tool == "pep8"
		let &grepprg = 'pep8'
	else
		echohl WarningMsg
		echo "PythonGrep Error: Unknown Tool"
		echohl none
	endif
	if &readonly == 0 | update | endif
	silent! grep! %
	let &grepformat = l:grepformat_save
	let &grepprg = l:grepprogram_save
	" Open cwindow
	execute 'belowright copen'
	setlocal nolazyredraw
	redraw!
endfunction

ino <F3> <C-o>:call <SID>PythonGrep('pylint')<CR>
nno <F3> :call <SID>PythonGrep('pylint')<CR>
ino <F4> <C-o>:call <SID>PythonGrep('pep8')<CR>
nno <F4> :call <SID>PythonGrep('pep8')<CR>
