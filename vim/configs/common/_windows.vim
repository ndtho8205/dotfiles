""""""""""""""""""""
"" splits
""""""""""""""""""""

"" split panes to right and bottom
set splitbelow
set splitright

""""""""""""""""""""
"" buffer
""""""""""""""""""""

"" this makes vim act like all other editors, buffers can
"" exist in the background without being in a window.
"" http://items.sjbach.com/319/configuring-vim-right
set hidden

"" reload files changed outside vim
set autoread
augroup AutoReloadBuffer
  autocmd!
  autocmd CursorHold,CursorHoldI * checktime   " when cursor stays still for 4 secs
  autocmd FocusGained,BufEnter * checktime     " when changing buffers
  " au FocusGained,BufEnter * :silent! !  " silently, no confirmation
augroup END
