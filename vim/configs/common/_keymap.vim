"" map leader to ,
let mapleader=','

"" map for quickly switch to CMD mode
nnoremap ; :
nnoremap : ;

"" map for avoid pressing ESC key
inoremap jk <ESC>
inoremap kj <ESC>

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

"" move forward/backward in a line in insert mode
inoremap <C-f> <Right>
inoremap <C-b> <Left>
