augroup vim_session
	nnoremap <leader>s :ToggleWorkspace<CR>

	let g:workspace_autocreate = 1
	let g:workspace_autosave = 1
	let g:workspace_autosave_au_updatetime = 5000
	let g:workspace_autosave_ignore = ['gitcommit', 'gitrebase', 'nerdtree']
	let g:workspace_autosave_untrailspaces = 0
	let g:workspace_persist_undo_history = 1
	let g:workspace_session_name = '.vimsession.file'
	let g:workspace_undodir='.vimsession.undo'
augroup END

