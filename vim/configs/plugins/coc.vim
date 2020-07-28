
"" reduce the delays
set updatetime=200

"" don't give |ins-completion-menu| messages
set shortmess +=c

let g:coc_global_extensions = [
\  'coc-snippets',
\  'coc-go',
\  'coc-rust-analyzer',
\  'coc-tsserver',
\  'coc-vetur',
\  'coc-css',
\  'coc-json',
\]

"" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
\  pumvisible() ? "\<C-n>" :
\  <SID>CheckBackSpace() ? "\<Tab>" :
\  coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

"" use <C-Space> to trigger completion
inoremap <silent><expr> <C-@> coc#refresh()

"" use <cr> to confirm completion
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"" map for gotos
nmap gd <Plug>(coc-definition)
nmap gt <Plug>(coc-type-definition)
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
