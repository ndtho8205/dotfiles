"" lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'active': {
      \   'left': [
      \               [ 'mode', 'paste' ],
      \               [ 'gitbranch', 'filename', 'readonly', 'modified' ]
      \           ],
      \   'right': [
      \               [ 'linting', 'fileencoding', 'filetype'],
      \            ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LightLineFilename',
      \   'linting': 'LinterStatus',
      \ },
      \ }

function! LightLineFilename()
  return expand('%')
endfunction