" Below mappings replace the behaviour of d,c,x operators.

" use blackhole redirection
 nnoremap d "_d
 vnoremap d "_d
 nnoremap D "_D
 vnoremap D "_D
 nnoremap c "_c
 vnoremap c "_c
 nnoremap C "_C
 vnoremap C "_C

 " x for cut
nnoremap xx ""0v$x
nnoremap x ""dl
nnoremap X ""vg_x
