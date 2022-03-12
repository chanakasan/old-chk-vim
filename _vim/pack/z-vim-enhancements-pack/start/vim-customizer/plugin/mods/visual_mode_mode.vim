" replace visually selected text
vnoremap <C-r> "hy:%s/<C-r>h/<C-r>h/gc<left><left><left>

" Backspace: Delete selected and go into insert mode
xnoremap <bs> c

" p: Paste in visual mode should not replace the default register with the
" deleted text
" xnoremap p "_dP
