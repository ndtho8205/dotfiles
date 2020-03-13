"" reduce the delays
set updatetime=300

"" don't give |ins-completion-menu| messages
set shortmess +=c

let g:coc_global_extensions = [
\  'coc-snippets',
\  'coc-go',
\  'coc-rls',
\  'coc-tsserver',
\  'coc-eslint',
\  'coc-prettier',
\  'coc-css',
\  'coc-json',
\]

"" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
\  pumvisible() ? "\<C-n>" :
\  <SID>CheckBackSpace() ? "\<Tab>" :
\  coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

function! s:CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"" map for gotos
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

"" show documentation in preview window
nnoremap <silent> K :call <SID>ShowDocumentation()<CR>

function! s:ShowDocumentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" rename symbol
nmap <leader>rn <Plug>(coc-rename)
