" autocomplete using tab key when pumvisible
inoremap <expr><TAB>  pumvisible() ? "\<C-n>\<C-y>" : "\<TAB>"

" ctrl-s to save
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>



" insert a semicolon at end of line
nnoremap ;; <esc>m`:s/\s\+$//e<cr>A;<esc>``



cnoremap $t map ,t :!clear;



" auto indent file
nnoremap <leader>= m`gg=G``



" uppercase first letter of current word
nnoremap <Leader>u bvU



" git blame
vnoremap <Leader>bl :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>



inoremap <c-l> <space>=<space>



" jump to end of pasted text
"vnoremap <silent> y y`]
"vnoremap <silent> p p`]
"nnoremap <silent> p p`]


" faster scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


nnoremap <enter> :nohl<cr><enter>



" move vertically by visual line
nnoremap k gk
nnoremap j gj



" visual indent
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv



" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>



" select the last pasted text
nmap gV `[v`]



" do til end of line
nnoremap Y y$



" toggle last inserted text case
inoremap <c-y><c-j> <esc>ma`[v`]~`aA



command! MarkdownPreview :silent w | !clear; (markdown % > /tmp/MarkdownPreview.html) && refresh_chrome <cr> \| :redraw
