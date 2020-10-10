let g:xcodedarkhc_dim_punctuation = 1
let g:xcodedarkhc_emph_types = 1
let g:xcodedarkhc_emph_funcs= 1
let g:xcodedarkhc_emph_idents = 1

augroup vim-colors-xcode
  autocmd!
  autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
  autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic
augroup END

colorscheme xcodedarkhc
