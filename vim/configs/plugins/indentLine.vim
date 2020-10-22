"" enableindentLine by default
let g:indentLine_enabled = 1

"" better performance
let g:indentLine_faster = 1

"" specify a character to be used
"" ▏ ┆ ⎸
let g:indentLine_first_char = '▏'
let g:indentLine_char = '▏'

"" show first indent level
let g:indentLine_showFirstIndentLevel = 1

"" use colorscheme
"let g:indentLine_setColors = 0

"" fix conceal settings
let g:indentLine_concealcursor = ''
let g:indentLine_conceallevel = 2

"" exclude filetypes
let g:indentLine_fileTypeExclude=['markdown', 'json']
let g:indentLine_bufNameExclude = ['Netrw*']
