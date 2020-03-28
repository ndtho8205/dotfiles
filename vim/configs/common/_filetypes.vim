augroup AutoSetupFiletypes
  autocmd!
  autocmd FileType go call s:SetupGo()
  autocmd FileType python call s:SetupPython()
  autocmd FileType markdown call s:SetupMarkdown()
augroup END

function! s:SetupGo()
  setlocal expandtab
  setlocal shiftwidth=4
  setlocal tabstop=4
  setlocal softtabstop=4
endfunction

function! s:SetupPython()
  setlocal expandtab
  setlocal shiftwidth=4
  setlocal tabstop=4
  setlocal softtabstop=4
endfunction

function! s:SetupMarkdown()
  nnoremap <F5> :!google-chrome "file://%:p"<CR><CR>
endfunction

"" Javascript
" autocmd FileType javascript set formatprg=prettier\ --stdin
" autocmd BufWritePre *.js :normal gggqG
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
