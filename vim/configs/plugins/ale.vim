"" fix files automatically on save
let g:ale_fix_on_save = 1

"" keep the sign gutter open at all times
set signcolumn=number
let g:ale_sign_column_always = 1

"" what text should be used for signs
let g:ale_sign_error = ""
let g:ale_sign_warning = ""

"" change the format of echo messages
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"" enable linters
let g:ale_linters = {
\  'go': ['gofmt', 'golangci-lint', 'gobuild'],
\  'rust': ['cargo', 'analyzer'],
\  'markdown': ['markdownlint'],
\}

"" linters for Rust
let g:ale_rust_rls_toolchain = 'stable'

"" :ALEFix will try and fix code.
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'sh': ['shfmt'],
\  'json':['prettier'],
\  'javascript':['prettier', 'eslint'],
\  'typescript':['prettier', 'eslint'],
\  'scss':['prettier', 'stylelint'],
\  'css':['prettier', 'stylelint'],
\  'vue':['prettier', 'eslint'],
\  'python':['black', 'isort'],
\  'go':['gofmt', 'goimports'],
\  'rust': ['rustfmt'],
\  'markdown': ['prettier'],
\}

"" config prettier on markdown
let g:ale_javascript_prettier_options = '--prose-wrap always'

"" navigate beween errors quickly
nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)
