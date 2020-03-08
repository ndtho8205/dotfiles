"" use tab to trigger completion and navigate
"" let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"" use <CR> to select
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"" show documentation
noremap <silent> gj :call completor#do('definition')<CR>
noremap <silent> gd :call completor#do('doc')<CR>
noremap <silent> gf :call completor#do('format')<CR>
noremap <silent> gh :call completor#do('hover')<CR>
noremap <silent> gs :call completor#do('signature')<CR>

function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
    " If completor is not open and we are in the middle of typing a word then
    " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^[[:keyword:][:ident:]]'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction
