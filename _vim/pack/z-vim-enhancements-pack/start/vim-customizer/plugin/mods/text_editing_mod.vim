set showmatch  " Briefly jump to a paren once it's balanced
set matchtime=3 " (for only .2 seconds).

set number
set guicursor+=a:blinkon0  " Disable all blinking:
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set nowrap
set nojoinspaces
set infercase
set foldmethod=marker
set clipboard=unnamed



" Indentation {{{
let g:html_indent_inctags = "html,body,head,tbody"
set autoindent
set smartindent
set copyindent
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround  " when at 3 spaces and i hit >>, go to 4, not 5.
" }}}

" Scrolling {{{
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
" }}}

" Whitespace {{{
set expandtab
set tabstop=2
set softtabstop=2
" }}}

" Search {{{
set incsearch
set hlsearch
set ignorecase smartcase  " Makes searches case-sensitive only if they contain uppercase letters
" }}}

" Dictionary {{{
set dictionary+=/home/cs/.vim/dict/words
set complete+=k
" }}}

