augroup jistr-vim-nerdtree-tabs
	" Variables
	let g:NERDTreeIgnore=['\~$', 'target']
	let g:nerdtree_tabs_open_on_gui_startup = 0
	let g:nerdtree_tabs_open_on_console_startup = 2
	let g:nerdtree_tabs_no_startup_for_diff = 1
	let g:nerdtree_tabs_smart_startup_focus = 1
	let g:nerdtree_tabs_open_on_new_tab = 1
	let g:nerdtree_tabs_meaningful_tab_names = 1
	let g:nerdtree_tabs_autoclose = 1
	let g:nerdtree_tabs_synchronize_view = 1
	let g:nerdtree_tabs_synchronize_focus = 1
	let g:nerdtree_tabs_focus_on_files = 1
	let g:nerdtree_tabs_startup_cd = 0
	let g:nerdtree_tabs_autofind = 0

	" Mappings
	map <Leader>n <plug>NERDTreeTabsToggle<CR>
augroup END
