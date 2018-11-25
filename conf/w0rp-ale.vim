augroup w0rp-ale
	" eslint
	let g:ale_scss_stylelint_executable = 'node_modules/.bin/stylelint'
	let g:ale_javascript_eslint_executable = 'node_modules/.bin/eslint'
	let g:ale_javascript_eslint_use_global = 0
	let g:airline#extensions#ale#enabled = 1
	let g:ale_linters = {
				\	'javascript':
				\	[
				\		'eslint'
				\	],
				\	'scss':
				\	[
				\		'stylelint'
				\	]
				\}

	" https://prettier.io/docs/en/vim.html
	let g:ale_javascript_prettier_options = '--single-quote --trailling-comma es5'
	let g:prettier#config#use_tabs = 'true'
	let g:prettier#config#tab_width = 4
	let g:ale_fix_on_save = 1
	let g:ale_fixers = {
				\	'javascript':
				\	[
				\		'prettier'
				\	]
				\}

	" General options
	let g:ale_sign_column_always = 0
	let g:ale_lint_on_text_changed = 1
	let g:ale_sign_error = '>>'
	let g:ale_sign_warning = '--'
	let g:ale_lint_on_save = 1
	let g:ale_lint_delay = 300
augroup END

