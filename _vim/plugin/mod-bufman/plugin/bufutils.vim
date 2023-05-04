" ##########################################
" # BufUtils
" ##########################################

function! BufCount()
  return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
command! BufCount :call BufCount()


function! CloseBuffer()
  let current_buf = bufnr('%')
  let alt_buf = bufnr('#')

  if BufCount() == 1
    exec ':bd'
  elseif alt_buf == current_buf || buflisted(alt_buf) == 0
    exec ':bnext | bd#'
  else
    exec ':b# | bd#'
  endif
  redraw!
endfunction
command! Bclose :call CloseBuffer()
command! Bc Bclose
command! BC Bclose
