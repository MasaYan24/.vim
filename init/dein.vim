"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/bundles/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin("$HOME/.vim/bundles/dein")

" Let dein manage dein
" Required:
call dein#add('$HOME/.vim/bundles/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('scrooloose/syntastic')
call dein#add('Shougo/neocomplcache')
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/ivm-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1
let g:neocomplete#enable_at_startup = 1
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
