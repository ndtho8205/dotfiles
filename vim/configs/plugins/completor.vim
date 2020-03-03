"" use tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"" use tab to trigger completion
"" let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()

"" show documentation
noremap <silent> <leader>d :call completor#do('doc')<CR>
inoremap ,s <c-o> :call completor#do('signature')<CR>

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
