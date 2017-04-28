augroup vim_session
	nnoremap <leader>s :ToggleWorkspace<CR>

	set updatetime=4000  " Default Vim setting (specifies CursorHold wait time).

	let g:workspace_autosave = 1
	let g:workspace_session_name = '.vimsession.file'
	let g:workspace_persist_undo_history = 1  " enabled = 1 (default), disabled = 0
	let g:workspace_undodir='.vimsession.undo'
	let g:workspace_autosave_untrailspaces = 0
	let g:workspace_autosave_ignore = ['gitcommit']
augroup END

