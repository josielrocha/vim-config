let g:vim_directory = fnamemodify(expand($MYVIMRC), ":p:h")
let g:config_directory = g:vim_directory . '/conf'
let g:config_files = [g:config_directory . '/user-settings.vim']

call plug#begin(g:vim_directory . '/plugged')

let g:plugins = [
	\'NLKNguyen/papercolor-theme',
	\'szw/vim-maximizer',
	\'airblade/vim-gitgutter',
	\'Yggdroot/LeaderF',
	\'editorconfig/editorconfig-vim',
	\'ekalinin/dockerfile.vim',
	\'gregsexton/matchtag',
	\'airblade/vim-rooter',
	\'kien/tabman.vim',
	\'ervandew/screen',
	\'chiedo/vim-px-to-em',
	\'heavenshell/vim-jsdoc',
	\'isRuslan/vim-es6',
	\'jiangmiao/auto-pairs',
	\'jistr/vim-nerdtree-tabs',
	\'junegunn/gv.vim',
	\'lepture/vim-velocity',
	\'maksimr/vim-jsbeautify',
	\'mattn/emmet-vim',
	\'mbra/vim-javascript-format',
	\'mhinz/vim-grepper',
	\'mustache/vim-mustache-handlebars',
	\'ntpeters/vim-better-whitespace',
	\'scrooloose/nerdcommenter',
	\'scrooloose/nerdtree',
	\'terryma/vim-multiple-cursors',
	\'thaerkh/vim-indentguides',
	\'tpope/vim-fugitive',
	\'tpope/vim-sensible',
	\'tweekmonster/startuptime.vim',
	\'vim-airline/vim-airline',
	\'vim-airline/vim-airline-themes',
	\'w0rp/ale',
	\'xuyuanp/nerdtree-git-plugin',
	\'kewah/vim-stylefmt'
\]

" Plugins
for plugin in g:plugins
	Plug plugin
	let g:filename = join([tolower(substitute(g:plugin, "/", "-", "")), ".vim"], "")
	let g:filepath = join([g:config_directory, g:filename], "/")
	call add(g:config_files, expand(g:filepath))
endfor

call plug#end()

" Settings
for config_file in g:config_files
	if filereadable(config_file)
		execute 'source ' . config_file
	endif
endfor

