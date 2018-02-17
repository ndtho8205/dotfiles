"" vim-javascript
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
