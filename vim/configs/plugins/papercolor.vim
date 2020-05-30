"" [light, dark] version of theme
set background=dark

highlight ColorColumn ctermbg=235 guibg=#191919

"" theme options
let g:PaperColor_Theme_Options = {
\  'theme': {
\    'default': {
\      'transparent_background': 1,
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

"" set colorscheme
colorscheme PaperColor
