augroup prabirshrestha-vim-lsp
	let g:lsp_async_completion = 1

	if executable('pyls')
		" pip install python-language-server
		au User lsp_setup call lsp#register_server({
					\ 'name': 'pyls',
					\ 'cmd': {server_info->['pyls']},
					\ 'whitelist': ['python'],
					\ })
	endif

	autocmd FileType typescript, javascript setlocal omnifunc=lsp#complete
augroup END
