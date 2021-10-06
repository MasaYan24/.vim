let &colorcolumn=join(range(80,999),",")
hi ColorColumn ctermbg=225 guibg=#2c2d27

set incsearch
set hlsearch  " hilight search
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set cursorline  " hilight curosr line
hi cursorline cterm=None ctermbg=255

set list listchars=tab:»-,nbsp:%

if has("syntax")
  syntax on

  " POD bug provision
  syn sync fromstart

  function! ActivateInvisibleIndicator()
    " The "　"is the two-byte space
    syntax match InvisibleJISX0208Space "　" display containedin=ALL
    highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
  endfunction

  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
  augroup END
endif

" keep cursor position
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd Filetype neosnippet set noexpandtab nosmarttab tabstop=4
