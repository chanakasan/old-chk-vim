" ##########################################
" # FileUtils
" ##########################################

function! DuplicateFile()
  let old_name = expand('%')
  if old_name != ''
    let new_name = input('Duplicate file: ', expand('%'), 'file')
  endif

  if old_name != '' && new_name != '' && new_name !=# old_name
    exec ':saveas ' . new_name
    redraw!
  endif
endfunction
command! Dup :call DuplicateFile()
command! DUp Dup


function! RenameFile()
  let old_name = expand('%')

  if old_name == ''
    return -1
  endif

  let new_name = input('Rename file: ', expand('%'), 'file')

  if new_name != '' && new_name !=# old_name
    exec ':saveas ' . new_name

    if filereadable(new_name)
      exec ':silent !rm ' . old_name
      redraw!
      exec ':buf #'
      exec ':bw'
    else
      echoerr 'Failed to rename'
    endif
  endif
endfunction
command! Mv :call RenameFile()
command! MV Mv
command! Rename Mv
command! REname Mv


function! DeleteFile()
  let file_name = expand('%')
  if file_name == ''
    return -1
  endif

  exec ':silent !rm -i ' . file_name
  redraw!
  exec ':call CloseBuffer()'
endfunction
command! Rm :call DeleteFile()
command! RM Rm
command! Del Rm
command! DEl Rm


function! MkDir()
  let new_dir = input('New dir: ', expand('%:h').'/')
  if new_dir == ''
    return -1
  endif

  if !isdirectory(new_dir)
    exec ':silent !mkdir -p ' . new_dir
    redraw!
  endif
endfunction
command! Mkdir :call MkDir()
command! MKdir Mkdir


function! FindAndReplace()
  let find_str = input('Replace: ')
  let replace_str = input('With: ')
  let directory_str = input('In: ')
  if find_str != '' && replace_str != ''
    exec "!ack -l '".find_str."' ".directory_str." | xargs perl -pi -E 's/".find_str."/".replace_str."/g'"
  endif
endfunction
command! FindAndReplace :call FindAndReplace()


function! CurrentFileDir()
  let current_file_dir = escape(expand("%:h"), ' ')."/"
  if current_file_dir == "./"
    current_file_dir = ""
  endif
  return current_file_dir
endfunction
