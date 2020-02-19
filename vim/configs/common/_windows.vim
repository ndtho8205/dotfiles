""""""""""""""""""""
"" splits
""""""""""""""""""""

"" navigate between splits easily
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

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
au CursorHold,CursorHoldI * checktime   " when cursor stays still for 4 secs
au FocusGained,BufEnter * checktime     " when changing buffers
" au FocusGained,BufEnter * :silent! !  " silently, no confirmation

""""""""""""""""""""
"" tabpage
""""""""""""""""""""

"" open/close tabpage
nnoremap tn :tabnew<cr>
nnoremap tc :tabclose<cr>
nnoremap to :tabonly<cr>

"" navigate between tabpages
nnoremap H :tabnext<cr>
nnoremap L :tabprev<cr>
nnoremap th :tabnext<cr>
nnoremap tl :tabprev<cr>
nnoremap tj  :tabfirst<CR>
nnoremap tk  :tablast<CR>

"" move a tabpage
nnoremap tm  :tabmove<Space>

"" go to the n-th tabpage
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
