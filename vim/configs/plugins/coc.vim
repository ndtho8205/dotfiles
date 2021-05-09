
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
\  'coc-emmet',
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

"" make <CR> auto-select the first completion item and notify coc.nvim to
"" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"" map for gotos
nmap gd <Plug>(coc-definition)
nmap gt <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

"" show documentation in preview window
nnoremap <silent> gk :call <SID>ShowDocumentation()<CR>

function! s:ShowDocumentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"" rename symbol
nmap <leader>rn <Plug>(coc-rename)

"" remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
