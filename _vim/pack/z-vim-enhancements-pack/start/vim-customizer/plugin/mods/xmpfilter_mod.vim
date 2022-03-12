augroup xmpfilter_mod
  autocmd!

  autocmd FileType ruby nmap <buffer> <F7> <Plug>(xmpfilter-mark)
  autocmd FileType ruby xmap <buffer> <F7> <Plug>(xmpfilter-mark)
  autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
  autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
augroup END
