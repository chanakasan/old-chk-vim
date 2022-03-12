" buffer helpers = {
command! Mru :bro ol
command! MRu Mru
command! New :enew
command! Bw :bprev | bw#
command! BW :bprev | bw#
command! CloseAll :bufdo bd
command! CLoseAll :bufdo bd
" }

" various = {
command! SourceFile :source %
" }
