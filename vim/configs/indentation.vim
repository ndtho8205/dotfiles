"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" enable filetype plugins
filetype plugin indent on

"" tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"" tabs for specific languages
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4

"" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
