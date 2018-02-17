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
      \               [ 'lineinfo' ],
      \               [ 'percent' ],
      \               [ 'fileformat', 'filetype'],
      \               [ 'linter_errors', 'linter_warnings', 'linter_ok' ]
      \            ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \ },
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction


"" lightline-ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" register the components
let g:lightline.component_expand = {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

"" set color to the components
let g:lightline.component_type = {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

"" using icons as indicators
let g:lightline#ale#indicator_warnings = "⚠"
let g:lightline#ale#indicator_errors = "✖"
let g:lightline#ale#indicator_ok = "⬥"


