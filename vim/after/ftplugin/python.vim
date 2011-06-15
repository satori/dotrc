setlocal expandtab
ino <buffer><silent> ( ()<Left>
ino <buffer><silent> [ []<Left>
ino <buffer><silent> { {}<Left>
au BufWritePre *.py :%s/\s\+$//e
