let b:vim_directory = fnamemodify(expand($MYVIMRC), ':p:h')
let b:config_directory = b:vim_directory . '/conf'
let b:user_settings = b:config_directory . '/user-settings.vim'
let b:config_files = [b:user_settings]

call plug#begin(b:vim_directory . '/plugged')
let b:plugins = [
			\	[ 'Yggdroot/LeaderF', { 'do': './install.sh' } ],
			\	[ 'ekalinin/dockerfile.vim', {  'for': ['dockerfile'] } ],
			\	[ 'gregsexton/matchtag', { 'for': ['html', 'mustache', 'handlebars'] } ],
			\	[ 'isRuslan/vim-es6', { 'for': ['javascript'] } ],
			\	[ 'kewah/vim-stylefmt', { 'for': ['css', 'sass', 'less', 'stylus'] } ],
			\	[ 'lepture/vim-velocity', { 'for': ['velocity'] } ],
			\	[ 'maksimr/vim-jsbeautify', { 'for': ['javascript', 'json'] } ],
			\	[ 'mattn/emmet-vim', { 'for': ['html', 'jsx', 'javascript', 'mustache', 'handlebars'] } ],
			\	[ 'galooshi/vim-import-js', { 'for': ['javascript'] } ],
			\	[ 'hotoo/jsgf.vim', { 'for': ['javascript', 'typescript' ] } ],
			\	[ 'mbra/vim-javascript-format', { 'for': ['javascript', 'json'] } ],
			\	[ 'mustache/vim-mustache-handlebars', { 'for': ['html', 'mustache', 'handlebars'] } ],
			\	[ 'heavenshell/vim-jsdoc', { 'for': ['javascript' ] } ],
			\	[ 'Valloric/YouCompleteMe', { 'for': ['javascript'], 'do': './install.py --js-completor' } ],
			\	'NLKNguyen/papercolor-theme',
			\	'sheerun/vim-polyglot',
			\	'airblade/vim-gitgutter',
			\	'tomasiser/vim-code-dark',
			\	'joshdick/onedark.vim',
			\	'airblade/vim-rooter',
			\	'editorconfig/editorconfig-vim',
			\	'jiangmiao/auto-pairs',
			\	'jistr/vim-nerdtree-tabs',
			\	'junegunn/gv.vim',
			\	'kien/tabman.vim',
			\	'mhinz/vim-grepper',
			\	'ntpeters/vim-better-whitespace',
			\	'scrooloose/nerdcommenter',
			\	'scrooloose/nerdtree',
			\	'terryma/vim-multiple-cursors',
			\	'thaerkh/vim-indentguides',
			\	'tpope/vim-fugitive',
			\	'tpope/vim-sensible',
			\	'tweekmonster/startuptime.vim',
			\	'vim-airline/vim-airline',
			\	'vim-airline/vim-airline-themes',
			\	'w0rp/ale',
			\	'xuyuanp/nerdtree-git-plugin',
			\]


			"\	'maralla/completor.vim',

" Plugins
for plugin in b:plugins
	if (type(plugin) == 3)
		let plugin_name = get(plugin, 0)
		let plugin_options = get(plugin, 1)
	else
		let plugin_name = plugin
		let plugin_options = {}
	endif

	Plug plugin_name, plugin_options

	let b:filename = join([tolower(substitute(plugin_name, '/', '-', '')), '.vim'], '')
	let b:filepath = join([b:config_directory, b:filename], '/')
	call add(b:config_files, expand(b:filepath))
endfor

call plug#end()

" Settings
for config_file in b:config_files
	if filereadable(config_file)
		execute 'source ' . config_file
	endif
endfor

