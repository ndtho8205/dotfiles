let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1

augroup tokyonight-vim
  autocmd!

  autocmd tokyonight-vim ColorScheme * hi ALEErrorSign guibg=NONE
augroup END


colorscheme tokyonight