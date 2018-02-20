"" javascript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" syntax highlighting for JSDocs
let g:javascript_plugin_jsdoc = 1

"" syntax hightlighting for Flow
let g:javascript_plugin_flow = 1

"" code folding for javascript
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

"" jsx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" enable for .js extension
let g:jsx_ext_required = 0

"" vue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" fix syntax highlighting stops working
" autocmd FileType vue syntax sync fromstart

"" vim-go
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" map
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>e <Plug>(go-rename)
"" syntax-gighlight for functions, methods and structs
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"" enable goimports to automatically insert import paths instead of gofmt
let g:go_fmt_command = "goimports"
"" disable show errors for the fmt command
let g:go_fmt_fail_silently = 1
"" disable suto fmt on save
let g:go_fmt_autosave = 0
"" fix lagging while using both vim-go and syntastic
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
