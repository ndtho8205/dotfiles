" use Vim settings, rather than Vi settings
set nocompatible

"" enable file type detection and do language-dependent indenting
filetype plugin indent on

runtime! configs/common/*.vim configs/plugins/*.vim
