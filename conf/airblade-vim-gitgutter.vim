augroup airblade-vim-gitgutter
	" Variables
	let g:gitgutter_async = 1
	let g:gitgutter_eager = 1
	let g:gitgutter_enabled = 1
	let g:gitgutter_grep_command = 'grep --color=never -e'
	let g:gitgutter_highlight_lines = 0
	let g:gitgutter_map_keys = 0
	let g:gitgutter_max_signs = 1000
	let g:gitgutter_override_sign_column_highlight = 1
	let g:gitgutter_realtime = 1
	let g:gitgutter_signs = 1

	set signcolumn=yes

	nmap <F6> :GitGutterLineHighlightsToggle<CR>

	" Customizing gutter column
	" highlight SignColumn ctermbg=whatever    " terminal Vim
	" highlight SignColumn guibg=whatever      " gVim/MacVim
augroup END
