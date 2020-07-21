"" don't show mode information in the last line
set noshowmode

let g:lightline = {
\  'colorscheme': 'powerlineish',
\  'mode_map': {
\    'n': 'N',
\    'i': 'I',
\    'R': 'R',
\    'v': 'V',
\    'V': 'VL',
\    '\<C-v>': 'VB',
\    'c': 'CMD',
\    's': 'S',
\    'S': 'SL',
\    '\<C-s>': 'SB',
\    't': 'TERM',
\  },
\  'active': {
\    'left': [
\      ['mode', 'paste'],
\      ['gitbranch', 'filename'],
\    ],
\    'right': [
\      ['lineinfo', 'percent'],
\      ['fileformat', 'fileencoding', 'filetype'],
\      ['linter_errors', 'linter_warnings', 'linter_ok'],
\    ],
\  },
\  'inactive': {
\    'left': [
\      ['mode'],
\      ['filename'],
\    ],
\    'right': [
\    ],
\  },
\  'component_function': {
\    'mode': 'LightlineMode',
\    'gitbranch': 'LightlineGitbranch',
\    'filename': 'LightlineFilename',
\    'fileformat': 'LightlineFileformat',
\    'fileencoding': 'LightlineFileencoding',
\    'filetype': 'LightlineFiletype',
\  },
\  'separator': {'left': "\ue0b0", 'right': ""},
\  'subseparator': {'left': "\ue0b1", 'right': "|",}
\}

function! LightlineMode()
  let filename = expand('%:t')
  return filename =~# '^__Tagbar__' ? 'Tagbar' :
    \ filename =~# 'NERD_tree' ? 'NERDTree' :
    \ filename =~# 'NetrwTreeListing' ? 'Netrw' :
    \ lightline#mode()
endfunction

function! LightlineGitbranch()
  let gitbranch = gitbranch#name()
  return strlen(gitbranch) ? ' ' . gitbranch : ''
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let readonly = &readonly && &filetype !=# 'help' ? ' ' : ''
  let modified = &modified ? ' +' : ''

  let filename = filename =~# '^__Tagbar__\|NERD_tree\|NetrwTreeListing' ? '' :
    \ filename . readonly . modified
  return filename
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? &filetype : ''
endfunction

"" lightline-ale
"" register the components
let g:lightline.component_expand = {
\  'linter_warnings': 'lightline#ale#warnings',
\  'linter_errors': 'lightline#ale#errors',
\  'linter_ok': 'lightline#ale#ok',
\}

"" set color to the components
let g:lightline.component_type = {
\  'linter_warnings': 'warning',
\  'linter_errors': 'error',
\  'linter_ok': 'right',
\}

"" use icons as indicators
let g:lightline#ale#indicator_warnings = " "
let g:lightline#ale#indicator_errors = " "
let g:lightline#ale#indicator_ok = ""
