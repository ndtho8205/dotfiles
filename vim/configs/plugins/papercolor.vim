"" [light, dark] version of theme
set background=dark

"" set colorscheme
colorscheme PaperColor

highlight ColorColumn ctermbg=235 guibg=#242424

"" theme options
let g:PaperColor_Theme_Options = {
\  'theme': {
\    'default.dark': {
\      'allow_bold': 1,
\      'allow_italic': 1,
\    },
\  },
\  'language': {
\    'python': { 'highlight_builtins': 1, },
\    'cpp': { 'highlight_standard_library': 1, },
\    'c': { 'highlight_builtins': 1, },
\  },
\}
