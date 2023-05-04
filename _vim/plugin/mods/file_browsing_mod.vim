" Settings {{{
set hidden

let g:netrw_altfile=1
" }}}

" Commands {{{
command! E :e .
" }}}

" Mappings {{{

"" use dir of current file
cnoremap <c-j>d <C-R>=escape(expand('%:h'), ' ').'/'<cr>
cnoremap <c-j>f <C-R>=escape(expand('%:t:r'), ' ')<cr>

"" alternate file
nnoremap ,, <c-^>

"" edit files
nnoremap <space>e :edit <C-R>=escape(expand('%:h:p'), ' ').'/'<cr>
nnoremap <space>v :view <C-R>=escape(expand('%:h:p'), ' ').'/'<cr>
" }}}
