" EditCustomizerPlugin = {
function! EditCustomizerPlugin(...)
  let pack_name = 'z-vim-enhancements-pack'
  let plugin_name = 'vim-customizer'
  let dotvim_path = '.vim/pack/'.pack_name.'/start/'.plugin_name.'/plugin'

  if a:0 > 0
    exec printf(':e %s/%s/%s.vim', $HOME, dotvim_path, a:1)
  else
    exec printf(':Explore %s/%s', $HOME, dotvim_path)
  endif
endfunction
command! -nargs=* EditCustomizerPlugin call EditCustomizerPlugin(<f-args>)
command! Edit EditCustomizerPlugin
command! EDit Edit
" }

" SetTabs = {
" set tabstop, softtabstop and shiftwidth to the same value
function! SetTabs()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
command! -nargs=* SetTabs call SetTabs(<f-args>)
" }

" SummarizeTabs = {
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
" }

" SynStack = {
" show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <F3> :call <SID>SynStack()<CR>
" }


" vp doesn't replace paste buffer = {
function! RestoreRegister()
  let @" = s:restore_reg
  if &clipboard == "unnamed"
    let @* = s:restore_reg
  endif
  return ''
endfunction

function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
"vnoremap <silent> <expr> p <sid>Repl()
" }


" Multi-purpose Tab key = {
" indent if we're at the beginning of a line. else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
  endif
endfunction
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-p>
" }
