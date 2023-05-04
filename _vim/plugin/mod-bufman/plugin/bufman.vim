" bufman.vim - A buffer manager
" Maintainer:   Chk
" Version:      1.0

if exists('g:loaded_bufman') || &compatible
  finish
else
  let g:loaded_bufman = 'yes'
endif

function! SetBufIdx(id)
  exec ":nnoremap ". "," . a:id . " :b " . expand('%:p') . "<cr>" . "\<cr>"
endfunction
command! -nargs=1 Idx :call SetBufIdx(<q-args>)
" vim:set ft=vim et sw=4 sts=4:
