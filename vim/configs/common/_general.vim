"" use Vim settings, rather than Vi settings
set nocompatible

"" enable file type detection and do language-dependent indenting
filetype plugin indent on

"" reload files changed outside vim
set autoread

"" automatically :write before running commands
set autowrite

"" allow backspace in insert mode
set backspace=indent,eol,start

"" turn on syntax highlighting
syntax on

"" copy to and from system clipboard
set clipboard=unnamedplus

"" this makes vim act like all other editors, buffers can
"" exist in the background without being in a window.
"" http://items.sjbach.com/319/configuring-vim-right
set hidden

"" mouse
if has('mouse')
  set mouse=a
endif

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
