function! Preserve(command)
  " Save the last search.
  let search = @/

  " Save the current cursor position.
  let cursor_position = getpos('.')

  " Save the current window position.
  normal! H
  let window_position = getpos('.')
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  " Restore the previous window position.
  call setpos('.', window_position)
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

function! Isort()
  call Preserve(':silent %!isort -')
endfunction

function! Black()
  call Preserve(':silent %!black --line-length=79 --quiet -')
  " call Preserve(':silent %!black --quiet --config $HOME/.pyproject.toml -')
endfunction

function! BlackIsort()
  call Black()
  call Isort()
endfunction

autocmd FileType python nnoremap <S-b> :call BlackIsort()<CR>
