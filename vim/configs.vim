"" use Vim settings, rather than Vi settings
set nocompatible

"" enable file type detection and do language-dependent indenting
filetype plugin indent on

"" load settings from files
let vimconfigs = '~/.vim/configs/common'
let vimplugins = '~/.vim/configs/plugins'

for fpath in split(globpath(vimplugins, '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(vimconfigs, '*.vim'), '\n')
  exe 'source' fpath
endfor
