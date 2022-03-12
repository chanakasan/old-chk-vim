augroup run_vim
  autocmd!
  autocmd FileType vim nnoremap <buffer> <leader>r :w \| so %<cr>
augroup END

augroup run_js
  autocmd!
  autocmd FileType javascript nnoremap <buffer> <leader>r :w \| !clear; node %<cr>
augroup END

augroup run_ruby
  autocmd!
  autocmd FileType ruby nnoremap <buffer> <leader>r :w \| !clear; ruby %<cr>
augroup END

augroup run_sh
  autocmd!
  autocmd FileType sh nnoremap <buffer> <leader>r :w \| !clear; bash %<cr>
augroup END
