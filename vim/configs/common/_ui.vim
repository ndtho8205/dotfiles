"" enable true colors support
if (has("termguicolors"))
  set termguicolors
endif

""""""""""""""""""""
"" editor
""""""""""""""""""""

"" turn on syntax highlighting
syntax on

"" show the cursor position all the time
set ruler

"" change vertical separator
set fillchars+=vert:│

"" show matching brackets
set showmatch
set matchtime=2         " tenths of a second to blink on matching brackets

"" highlight column after 'textwidth'
set colorcolumn=+1

"" don't redraw while executing macros (good performance config)
set lazyredraw

"" display tabs and trailing spaces visually in list mode
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ ,nbsp:␣

""""""""""""""""""""
"" lines
""""""""""""""""""""

"" highlight current line
set cursorline

"" break line
set textwidth=79

"" get word wrapping
set wrap

"" break line at 'breatat' characters
set linebreak

"" indent wrapped lines
set breakindent

"" put a string at the wrapped lines
set showbreak=↪\

""""""""""""""""""""
"" command
""""""""""""""""""""

"" show status bar
set laststatus=2

"" display incomplete commands
set showcmd

"" visual autocomplete for command menu
set wildmenu
set wildmode=longest:full,full

"" wildignore
set wildignore+=*.o,*.obj,*.pyc,*~,*.so,*.swp,*.zip
set wildignore+=*.gem,*.png,*.jpg,*.gif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store/*
set wildignore+=*/tmp/*,*/vim/backups*,*/vendor/*
set wildignore+=*/node_modules/*,*/venv/*,*/__pycache__/*
set wildignore+=*/sass-cache/*

"" shorten many interruptive prompts
set shortmess=atI
