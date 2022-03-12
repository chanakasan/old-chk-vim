augroup mod_ft_html
  autocmd!
  autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

augroup mod_ft_vim
  autocmd!
  autocmd FileType vim nnoremap <buffer> <leader>r :w \| so %<cr>
augroup END

augroup mod_ft_javascript
  autocmd!
  autocmd FileType javascript nnoremap <buffer> <leader>r :w \| !clear; node %<cr>
augroup END

augroup mod_ft_ruby
  autocmd!
  autocmd FileType ruby nnoremap <buffer> <leader>r :w \| !clear; ruby %<cr>
augroup END

augroup mod_ft_sh
  autocmd!
  autocmd FileType sh nnoremap <buffer> <leader>r :w \| !clear; bash %<cr>
augroup END

augroup mod_ft_qf
  autocmd!
  " Wrap the quickfix window
  autocmd FileType qf setlocal wrap linebreak
augroup END

augroup mod_ft_gs
  autocmd!
  autocmd BufRead,BufNewFile *.gs set ft=javascript
augroup END

augroup mod_ft_css
  autocmd!
  autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2
  "autocmd FileType css setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

augroup mod_ft_python
  autocmd!
  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd FileType python nnoremap <buffer> <leader>r :w \| !clear; python3 %<cr>
augroup END

augroup mod_ft_php
  autocmd!
  " tests
  "autocmd FileType php nnoremap <buffer> <leader>t :w \| !clear; phpunit %<cr>
  " run
  autocmd FileType php nnoremap <buffer> <leader>r :w \| !clear; php %<cr>

  "autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" -- END of FileType stuff

augroup mod_visualbell
  autocmd!
  autocmd VimEnter set visualbell t_vb=
augroup END

augroup mod_last_cursor_position
  autocmd!
  " jump to last cursor positon of a file
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup END

augroup mod_format_options
  autocmd!
  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
