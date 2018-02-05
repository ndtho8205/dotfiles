""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Visual Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"" show the cursor position all the time
set ruler

"" show line number
set number

set mousemodel=popup

"" don't redraw while executing macros (good performance config)
set lazyredraw

"" show matching brackets
set showmatch
set mat=2

"" extra margin to the left_alt_sep
set foldcolumn=1

"" disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

"" fix colors when run in tmux
if exists('$TMUX')
  " Colors in tmux
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

"" enable true colors support
set termguicolors
