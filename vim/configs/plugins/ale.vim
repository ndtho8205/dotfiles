"" ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" keep the sign gutter open at all times
let g:ale_sign_column_always = 1

"" what text should be used for signs
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

"" disable particular linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['pycodestyle'],
\}

"" :ALEFix will try and fix code.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

"" fix files automatically on save.
let g:ale_fix_on_save = 1

"" navigate beween errors quickly
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


"" show errors or warnings in statusline
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
" 
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
" 
"     return l:counts.total == 0 ? 'OK' : printf(
"     \   '%dW %dE',
"     \   all_non_errors,
"     \   all_errors
"     \)
" endfunction
