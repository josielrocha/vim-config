augroup mhinz-vim-grepper
	let g:grepper           = {}
	let g:grepper.tools     = ['ack', 'grep']
	"let g:grepper.tools     = ['git', 'ack', 'grep']
	let g:grepper.open      = 1
	let g:grepper.jumb      = 1
	let g:grepper.next_tool = '<leader>g'

	nnoremap <leader>g :Grepper -query
	nnoremap <leader>gg :Grepper -tool git -query<cr>
	nnoremap <leader>ga :Grepper -tool ack -query<cr>
augroup END
