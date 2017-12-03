let b:vim_directory = fnamemodify(expand($MYVIMRC), ':p:h')
let b:config_directory = b:vim_directory . '/conf'
let b:user_settings = b:config_directory . '/user-settings.vim'
let b:config_files = [b:user_settings]

call plug#begin(b:vim_directory . '/plugged')
let b:plugins = [
			\	'NLKNguyen/papercolor-theme',
			\	'sheerun/vim-polyglot',
			\	'artur-shaik/vim-javacomplete2',
			\	[ 'Yggdroot/LeaderF', { 'do': './install.sh' } ],
			\	'airblade/vim-gitgutter',
			\	'tomasiser/vim-code-dark',
			\	'joshdick/onedark.vim',
			\	'airblade/vim-rooter',
			\	'editorconfig/editorconfig-vim',
			\	'ekalinin/dockerfile.vim',
			\	'gregsexton/matchtag',
			\	'heavenshell/vim-jsdoc',
			\	'isRuslan/vim-es6',
			\	'jiangmiao/auto-pairs',
			\	'jistr/vim-nerdtree-tabs',
			\	'junegunn/gv.vim',
			\	'kewah/vim-stylefmt',
			\	'kien/tabman.vim',
			\	'lepture/vim-velocity',
			\	'maksimr/vim-jsbeautify',
			\	'mattn/emmet-vim',
			\	'galooshi/vim-import-js',
			\	'hotoo/jsgf.vim',
			\	'mbra/vim-javascript-format',
			\	'mhinz/vim-grepper',
			\	'mustache/vim-mustache-handlebars',
			\	'ntpeters/vim-better-whitespace',
			\	'maralla/completor.vim',
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

