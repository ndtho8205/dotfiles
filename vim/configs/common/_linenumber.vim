"" show line number
set number

"" set relativenumber
set relativenumber

"" toggle between line number modes automatically
augroup ToggleLineNumber
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * set norelativenumber
augroup END

