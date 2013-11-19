setlocal expandtab
au BufWritePre *.py :%s/\s\+$//e
