"" fix files automatically on save
let g:ale_fix_on_save = 1

"" keep the sign gutter open at all times
let g:ale_sign_column_always = 1

"" what text should be used for signs
let g:ale_sign_error = "✖"
let g:ale_sign_warning = "⚠"

"" change the format of echo messages
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"" enable linters for Go
let g:ale_linters = {
\  'go': ['gofmt', 'golangci-lint', 'gobuild'],
\  'rust': ['rls'],
\}
let g:ale_rust_rls_toolchain = 'stable'

"" :ALEFix will try and fix code.
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript':['eslint'],
\  'vue':['eslint'],
\  'python':['black'],
\  'go':['gofmt', 'goimports'],
\  'rust': ['rustfmt'],
\}

"" navigate beween errors quickly
nmap <silent> <leader>l <Plug>(ale_previous_wrap)
nmap <silent> <leader>p <Plug>(ale_next_wrap)
