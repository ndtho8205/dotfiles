"" show line number
set number

"" set relativenumber
set relativenumber

"" set minimal width of the line number
set numberwidth=3

"" toggle between line number modes automatically
augroup AutoToggleLineNumber
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * call s:ToggleLineNumber(1)
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * call s:ToggleLineNumber(0)
augroup END

function! s:ToggleLineNumber(open) abort
  let l:ftToIgnore = ['netrw']
  if index(l:ftToIgnore, &ft) < 0
    if a:open
      set relativenumber
    else
      set norelativenumber
    endif
  endif
endfunction
