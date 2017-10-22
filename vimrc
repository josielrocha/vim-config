let g:vim_directory = fnamemodify(expand($MYVIMRC), ':p:h')
let g:config_directory = g:vim_directory . '/conf'
let g:user_settings = g:config_directory . '/user-settings.vim'
let g:config_files = [g:user_settings]

call plug#begin(g:vim_directory . '/plugged')
let g:plugins = [
			\	'NLKNguyen/papercolor-theme',
			\	'Yggdroot/LeaderF',
			\	'airblade/vim-gitgutter',
			\	'airblade/vim-rooter',
			\	'chiedo/vim-px-to-em',
			\	'editorconfig/editorconfig-vim',
			\	'ekalinin/dockerfile.vim',
			\	'ervandew/screen',
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
			\	'mbra/vim-javascript-format',
			\	'mhinz/vim-grepper',
			\	'mustache/vim-mustache-handlebars',
			\	'ntpeters/vim-better-whitespace',
			\	'prabirshrestha/async.vim',
			\	'prabirshrestha/asyncomplete.vim',
			\	'prabirshrestha/asyncomplete-lsp.vim',
			\	'prabirshrestha/asyncomplete-flow.vim',
			\	'prabirshrestha/vim-lsp',
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
for plugin in g:plugins
	Plug plugin
	let g:filename = join([tolower(substitute(g:plugin, '/', '-', '')), '.vim'], '')
	let g:filepath = join([g:config_directory, g:filename], '/')
	call add(g:config_files, expand(g:filepath))
endfor

call plug#end()

" Settings
for config_file in g:config_files
	if filereadable(config_file)
		execute 'source ' . config_file
		echom config_file . ' loaded'
	endif
endfor

