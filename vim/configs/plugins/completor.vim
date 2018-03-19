"" use tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

"" use tab to trigger completion
"" let g:completor_auto_trigger = 0
inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"
