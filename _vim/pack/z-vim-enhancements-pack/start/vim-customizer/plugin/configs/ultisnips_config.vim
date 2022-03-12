command! -bang -nargs=? -complete=customlist,UltiSnips#FileTypeComplete Snip
      \ :call UltiSnips#Edit(<q-bang>, <q-args>)

let g:UltiSnipsEnableSnipMate = 0
let g:UltiSnipsExpandTrigger="<c-j>"
