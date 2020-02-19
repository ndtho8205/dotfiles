"" allow backspace in insert mode
set backspace=indent,eol,start

"" for regular expressions turn magic on
" set magic

"" copy to and from system clipboard
set clipboard=unnamedplus

"" remember the last 1000 commands and search patterns entered
set history=1000

"" use modeline to override vimrc option for a particular file
set modeline
set modelines=5

"" turn off backup, swap files
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" session management
let g:session_directory = "~/.vim-session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
