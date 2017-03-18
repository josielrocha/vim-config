let g:ale_javascript_eslint_use_global = 0
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_javascript_eslint_executable = './static-content/node_modules/.bin/eslint'
let g:ale_sign_column_always = 0
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_save = 1
let g:ale_lint_delay = 100

