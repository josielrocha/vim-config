augroup terryma-vim-multiple-cursors
	" Variables
	let g:multi_cursor_next_key='<C-n>'
	let g:multi_cursor_prev_key='<C-p>'
	let g:multi_cursor_skip_key='<C-x>'
	let g:multi_cursor_quit_key='<Esc>'

	" Map start key separately from next key
	let g:multi_cursor_start_key='<F6>'

	let g:multi_cursor_start_key='<C-n>'
	let g:multi_cursor_start_word_key='g<C-n>'

	let g:multi_cursor_quit_key='<C-c>'
	nnoremap <C-c> :call multiple_cursors#quit()<CR>

	" Default highlighting (see help :highlight and help :highlight-link)
	highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
	highlight link multiple_cursors_visual Visual
augroup END
