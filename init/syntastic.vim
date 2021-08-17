let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_flake8_post_args = "--max-line-length=120"
let g:syntastic_python_black_post_args = "--max-line-length=120"
let g:syntastic_python_mypy_post_args = "--ignore-missing-imports"
let g:syntastic_pyhton_checkers = ['black', 'mypy', 'flake8', 'autopep8']
