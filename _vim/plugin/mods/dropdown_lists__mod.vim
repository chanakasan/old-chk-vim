func! ListMonths()
  let list = ['January', 'February', 'March',
   \ 'April', 'May', 'June', 'July', 'August', 'September',
   \ 'October', 'November', 'December']
  call complete(col('.'), list)
  return ''
endfunc
inoremap <c-y>1 <C-R>=ListMonths()<CR>
