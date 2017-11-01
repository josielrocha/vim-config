augroup prabirshrestha/asyncomplete-flow
	if executable('flow-language-server')
		au User lsp_setup call lsp#register_server({
					\ 'name': 'flow-language-server',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'flow-language-server --stdio']},
					\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.flowconfig'))},
					\ 'whitelist': ['javascript'],
					\ })

		" Resolves 'flow' in the closest node_modules/.bin directory (in case
		" flow is installed via 'npm install flow-bin' locally). Falls back to
		" 'flowbin_path' (see below) if can't find it.
		au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
					\ 'name': 'flow',
					\ 'whitelist': ['javascript'],
					\ 'completor': function('asyncomplete#sources#flow#completor'),
					\ 'config': {
					\    'prefer_local': 1,
					\    'flowbin_path': expand('~/bin/flow'),
					\  },
					\ }))

		let g:lsp_async_completion = 1

		autocmd FileType javascript setlocal omnifunc=asyncomplete#complete

		" let g:lsp_log_verbose = 1
		" let g:lsp_log_file = expand('~/.vim-lsp.log')

		" for asyncomplete.vim log
		" let g:asyncomplete_log_file = expand('~/.vim-asyncomplete.log')
	endif
augroup END

