" {
command! ACk :Ack
" }

" {
command! InsertLineNumbers :%!nl -s '. ' -w 2
" }

" {
nmap <F3> i<C-R>=strftime("%Y-%m-%d %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %I:%M %p")<CR>
" }

" {
" counts the num of occurences of word under cursor
nnoremap * *<C-O>:%s///gn<CR>
" }

" {
nnoremap ,1 :tabn 1<cr>
nnoremap ,2 :tabn 2<cr>
nnoremap ,3 :tabn 3<cr>
nnoremap ,4 :tabn 4<cr>
" }

" {
command! Copy :!cat % | clip.exe
command! COpy :Copy
" }

" {
set pastetoggle=<F2>
" }

" misc {
let g:ctrlsf_ack_prg="ag"
nnoremap ,t :tabnew<cr>
command! Tabnew :tabnew
" }

