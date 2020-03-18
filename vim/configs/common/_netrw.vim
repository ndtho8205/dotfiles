"" remove banner
let g:netrw_banner = 0

"" change view type to tree
let g:netrw_liststyle = 3

"" set width to 20%
let g:netrw_winsize = 20

"" open files in a new vertical split
let g:netrw_browse_split = 2

"" split on the right
let g:netrw_altv = 1

"" don't save history
let g:netrw_dirhistmax = 0

"" hide files and folders
let g:netrw_list_hide = netrw_gitignore#Hide() . ',\(^\|\s\s\)\zs\.\S\+'

"" set netrw buffer
let g:netrw_bufsettings = 'nomodifiable nomodified nonumber norelativenumber nowrap readonly'

"" close netrw
nnoremap <leader>xn :call <sid>CloseAllNetrwBuffers()<cr>

function! s:CloseAllNetrwBuffers()
  for i in range(1, bufnr('$'))
    if getbufvar(i, '&filetype') == "netrw"
      silent exe 'bdelete! ' . i
    endif
  endfor
endfunction

"" setup netrw buffer
augroup AutoSetupNetrwBuffer
  autocmd!

  autocmd FileType netrw call s:SetupNetrw()

  "" open automatically when vim starts up with no specified files
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Vexplore | endif

  "" close vim if the only buffer left open is netrw
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" | q | endif
augroup END

function! s:SetupNetrw()
  "" delete netrw buffer when it was hidden
  setlocal bufhidden=delete

  "" remove <c-l> mapping
  nnoremap <buffer> <C-l> <C-w>l<CR>
endfunction
