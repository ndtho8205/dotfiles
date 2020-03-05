augroup AutoSetupFiletypes
  autocmd!
  autocmd FileType go call s:SetupGo()
  autocmd FileType python call s:SetupPython()
augroup END

function! s:SetupGo()
  setlocal expandtab
  setlocal shiftwidth=4
  setlocal tabstop=4
  setlocal softtabstop=4
endfunction

function! s:SetupPython()
  setlocal shiftwidth=4
  setlocal tabstop=8
  setlocal softtabstop=4
  setlocal expandtab
  setlocal textwidth=120
  setlocal colorcolumn=120
endfunction

"" Javascript
" autocmd FileType javascript set formatprg=prettier\ --stdin
" autocmd BufWritePre *.js :normal gggqG
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
