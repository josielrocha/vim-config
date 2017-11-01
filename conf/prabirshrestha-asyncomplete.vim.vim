augroup prabirshrestha-asyncomplete.vim
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

	imap <c-space> <Plug>(asyncomplete_force_refresh)

	let g:asyncomplete_auto_popup = 1
	let g:asyncomplete_remove_duplicates = 1


	let g:lsp_log_verbose = 1
	let g:lsp_log_file = expand('~/.vim-lsp.log')
	let g:asyncomplete_log_file = expand('~/.vim-asyncomplete.log')
augroup END

