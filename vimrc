let b:vim_directory = fnamemodify(expand($MYVIMRC), ':p:h')
let b:config_directory = b:vim_directory . '/conf'
let b:user_settings = b:config_directory . '/user-settings.vim'
let b:config_files = [b:user_settings]

call plug#begin(b:vim_directory . '/plugged')
let b:plugins = [
			\	'NLKNguyen/papercolor-theme',
			\	'airblade/vim-gitgutter',
			\	'airblade/vim-rooter',
			\	'editorconfig/editorconfig-vim',
			\	'jiangmiao/auto-pairs',
			\	'jistr/vim-nerdtree-tabs',
			\	'joshdick/onedark.vim',
			\	'mhinz/vim-grepper',
			\	'ntpeters/vim-better-whitespace',
			\	'scrooloose/nerdcommenter',
			\	'scrooloose/nerdtree',
			\	'sheerun/vim-polyglot',
			\	'terryma/vim-multiple-cursors',
			\	'thaerkh/vim-indentguides',
			\	'tomasiser/vim-code-dark',
			\	'tpope/vim-fugitive',
			\	'tpope/vim-sensible',
			\	'vim-airline/vim-airline',
			\	'vim-airline/vim-airline-themes',
			\	'w0rp/ale',
			\	'xuyuanp/nerdtree-git-plugin',
			\	['joonty/vdebug', { 'for': ['php'] }],
			\	[ 'rust-lang/rust.vim', { 'for': ['rust'] } ],
			\	[ 'Valloric/YouCompleteMe', { 'for': ['javascript'], 'do': './install.py --js-completer' } ],
			\	[ 'Yggdroot/LeaderF', { 'do': './install.sh' } ],
			\	[ 'ekalinin/dockerfile.vim', {  'for': ['dockerfile'] } ],
			\	[ 'gregsexton/matchtag', { 'for': ['html', 'mustache', 'handlebars', 'jsx'] } ],
			\	[ 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'typescript', 'jsx' ] } ],
			\	[ 'isRuslan/vim-es6', { 'for': ['javascript', 'typescript'] } ],
			\	[ 'kewah/vim-stylefmt', { 'for': ['css', 'sass', 'scss', 'less', 'stylus'] } ],
			\	[ 'lepture/vim-velocity', { 'for': ['velocity'] } ],
			\	[ 'maksimr/vim-jsbeautify', { 'for': ['javascript', 'typescript', 'json', 'jsx'] } ],
			\	[ 'mattn/emmet-vim', { 'for': ['html', 'mustache', 'handlebars'] } ],
			\	[ 'moll/vim-node', { 'for': ['javascript', 'typescript', 'jsx'] } ],
			\	[ 'mustache/vim-mustache-handlebars', { 'for': ['html', 'mustache', 'handlebars'] } ],
			\]

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

