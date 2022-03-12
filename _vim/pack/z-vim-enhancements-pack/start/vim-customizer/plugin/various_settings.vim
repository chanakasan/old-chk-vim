" to improve vim speed, set below ruby path if you are using rbenv
let g:ruby_path = system('echo $HOME/.rbenv/shims')

set noerrorbells
set history=500
set undolevels=500

set lazyredraw
set showmode  " show mode in status line when in Insert mode
set showcmd  " display incomplete commands

set timeout
set ttimeout
set timeoutlen=1000  " Wait 1 seconds before timing out a mapping
set ttimeoutlen=100  " and only 100 ms before timing out on a keypress.

set report=0
set autoread

set wildmenu
set wildmode=longest:full,full
set wildignore+=*.swp,*.bak,*.pyc,*.class

if v:version > 703
  set formatoptions+=j " Delete comment character when joining commented lines
endif
