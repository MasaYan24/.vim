set incsearch
set shiftwidth=4
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

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
