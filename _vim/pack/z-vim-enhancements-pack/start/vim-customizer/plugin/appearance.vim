set title
set cursorline
set ruler
set cmdheight=1
set showtabline=2

if has('termguicolors')
  let &t_8f="\e[38;2;%ld;%ld;%ldm"
  let &t_8b="\e[48;2;%ld;%ld;%ldm"
  set termguicolors
end

set background=dark
colors CodeCandy
