"" enable filetype plugins
filetype plugin indent on

"" tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
"" number of spaces in tab when editing
set softtabstop=2
"" number of visual spaces per TAB
set tabstop=2
"" tabs are spaces
set expandtab

"" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>
