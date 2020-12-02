"" do not automatically wrap text on typing
set formatoptions-=t

"" highlight last inserted text
" nnoremap gV `[v`]

"" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

"" move lines up/down
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
