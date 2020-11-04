augroup AutoSetupFiletypes
  autocmd!
  autocmd FileType go call s:SetupGo()
  autocmd FileType python call s:SetupPython()
  autocmd FileType markdown call s:SetupMarkdown()
  autocmd FileType make call s:SetupMakefile()
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
  nnoremap <F5> :!$DE_BROWSER "file://%:p"<CR><CR>
endfunction

function! s:SetupMakefile()
  setlocal noexpandtab
  setlocal shiftwidth=4
  setlocal tabstop=4
  setlocal softtabstop=4
endfunction
