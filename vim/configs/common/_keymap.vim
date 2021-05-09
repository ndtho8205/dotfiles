"" map leader to ,
let mapleader=','

"" map for quickly switch to CMD mode
nnoremap ; :
nnoremap : ;

"" map for quickly run shell command
nnoremap ! :!

"" map for avoid pressing ESC key
inoremap jk <ESC>
inoremap kj <ESC>

"" map for quickly turning off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"" map for center search result
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz
"nnoremap g* g*zz
"nnoremap g# g#zz

"" open/close folding with spacebar
nnoremap <space> za

"" map for quickly reloading .vimrc
nnoremap <leader>rv :source ~/.vimrc<CR>

"" map for quickly edit a file
nnoremap <leader>e :e **/*
nnoremap <leader>vs :vs **/*
nnoremap <leader>sp :sp **/*

"" move vertically by visual line
nnoremap j gj
nnoremap k gk

"" prevent multiple h/l
nnoremap L l
nnoremap H h
nnoremap l w
nnoremap h b

"" move to beginning/end of line
nnoremap B ^
nnoremap E $
vnoremap B ^
vnoremap E $

"" move forward/backward in a line in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>

"" indent code blocks
vnoremap < <gv
vnoremap > >gv

""""""""""""""""""""
"" splits
""""""""""""""""""""

"" navigate between splits easily
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h


""""""""""""""""""""
"" tabpage
""""""""""""""""""""

"" open/close tabpage
nnoremap tn :tabnew<cr>
nnoremap tc :tabclose<cr>
nnoremap to :tabonly<cr>

"" navigate between tabpages
nnoremap ]t :tabnext<cr>
nnoremap [t :tabprev<cr>
" nnoremap th :tabnext<cr>
" nnoremap tl :tabprev<cr>
" nnoremap tj  :tabfirst<CR>
" nnoremap tk  :tablast<CR>

"" move a tabpage
" nnoremap tm  :tabmove<Space>

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
nnoremap <leader>0 :tablast<cr>

""""""""""""""""""""
"" external commands
""""""""""""""""""""

nnoremap <F11> :!!<cr>
