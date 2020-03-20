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
