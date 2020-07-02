function s:create_popup(opts) abort
  let is_frame = has_key(a:opts, 'border')
  let buf = is_frame ? '' : term_start('ranger', #{hidden: 1})
  let id = popup_create(buf, #{
    \ line: a:opts.row,
    \ col: a:opts.col,
    \ minwidth: a:opts.width,
    \ minheight: a:opts.height,
    \ zindex: 50 - is_frame,
    \ })

  if is_frame
    call setwinvar(id, '&wincolor', a:opts.highlight)
    call setbufline(winbufnr(id), 1, a:opts.border)
    execute 'autocmd BufWipeout * ++once call popup_close('..id..')'
  else
    "execute 'autocmd BufWipeout * ++once bwipeout! '..buf
    execute 'autocmd BufWipeout * ++once call popup_close('..id..')'
  endif

  return winbufnr(id)
endfunction

function! Popup(...)
  " size
  let height = float2nr(&lines * 0.8)
  let width = float2nr(&columns * 0.9)
  let row = float2nr((&lines - height) / 2)
  let col = float2nr((&columns - width) / 2)

  " border
  let top = "┌" . repeat("─", width - 2) . "┐"
  let mid = "│" . repeat(" ", width - 2) . "│"
  let bot = "└" . repeat("─", width - 2) . "┘"
  let border = [top] + repeat([mid], height - 2) + [bot]

  let frame = s:create_popup({
    \ 'row': row, 'col': col, 'width': width, 'height': height,
    \ 'border': border, 'highlight': 'Comment'
    \ })

  call s:create_popup({
    \ 'row': row + 1, 'col': col + 2, 'width': width - 4, 'height': height - 2
    \ })

  let id = popup_create(buf, #{
    \ line: a:opts.row,
    \ col: a:opts.col,
    \ minwidth: a:opts.width,
    \ zindex: 50 - is_frame,
    \ })
})
endfunction
