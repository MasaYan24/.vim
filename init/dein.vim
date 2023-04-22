set nocompatible

let s:dein_base = "$HOME/.local/share/dein"

let s:dein_src = "$HOME/.local/share/dein/repos/github.com/Shougo/dein.vim"

execute 'set runtimepath+=' . s:dein_src

" Required:
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Add or remove your plugins here like this:
call dein#add('scrooloose/syntastic')
call dein#add('Shougo/neocomplcache')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Vimjas/vim-python-pep8-indent')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
