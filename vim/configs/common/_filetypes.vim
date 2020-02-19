autocmd FileType go setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

autocmd FileType python setlocal shiftwidth=4 textwidth=120 tabstop=8 softtabstop=4 expandtab colorcolumn=120

"" Javascript
" autocmd FileType javascript set formatprg=prettier\ --stdin
" autocmd BufWritePre *.js :normal gggqG
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
