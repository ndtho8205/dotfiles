let vimconfigs = '~/.vim/configs'
let vimplugins = '~/.vim/configs/plugins'

for fpath in split(globpath(vimconfigs, '*.vim'), '\n')
  exe 'source' fpath
endfor

for fpath in split(globpath(vimplugins, '*.vim'), '\n')
  exe 'source' fpath
endfor