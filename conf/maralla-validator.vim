
" Checkers
let g:validator_javascript_checkers = ['eslint']

" Customizing error message
let g:validator_error_msg_format = "[ ●  %d%d issues ]"

" Auto open quickfix
let g:validator_auto_open_quickfix = 1

" Show permanently the sign column
let g:validator_permanent_sign = 1

" let g:validator_javascript_binary = '/usr/bin/eslint'

" handle file type alias
" let g:validato_filetype_map = {'<alias>': '<filetype_supported>'}

" Ignore file types
" let g:validator_ignore = ['<filetype>']

" If not specified `<args_name>` is `<filetype>_<checker>`.
" let g:validator_<args_name>_args = '<args>'
" If not specified `<binary_name>` is `<filetype>_<checker>`.
" let g:validator_<binary_name>_binary = '/path/to/executable'

" For c/c++
" let g:validator_clang_tidy_binary = '/path/to/executable'

" For example
" let g:validator_python_flake8_args = '--max-line-length=120'
" let g:validator_python_flake8_binary = '/Users/maralla/.dotfiles/virtualenvs/py27/bin/flake8'

