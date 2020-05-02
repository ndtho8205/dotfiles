"" do not automatically wrap text on typing
set formatoptions-=t

"" highlight last inserted text
" nnoremap gV `[v`]

"" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"" move lines up/down
set <M-j>=j    " fix Alt key
imap j <M-j>
set <M-k>=k
imap k <M-k>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
