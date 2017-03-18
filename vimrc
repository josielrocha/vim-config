call plug#begin('~/.vim/plugged')

let g:vim_directory = fnamemodify(expand($MYVIMRC), ":p:h")
let g:config_directory = g:vim_directory . '/conf'
let g:config_files = [g:config_directory . '/user-settings.vim']

let g:plugins = [
  \'NLKNguyen/papercolor-theme',
  \'airblade/vim-gitgutter',
  \'tweekmonster/startuptime.vim',
  \'editorconfig/editorconfig-vim',
  \'gregsexton/matchtag',
  \'mustache/vim-mustache-handlebars',
  \'heavenshell/vim-jsdoc',
  \'jiangmiao/auto-pairs',
  \'jistr/vim-nerdtree-tabs',
  \'ctrlpvim/ctrlp.vim',
  \'lepture/vim-velocity',
  \'maksimr/vim-jsbeautify',
  \'mileszs/ack.vim',
  \'mattn/emmet-vim',
  \'mbra/vim-javascript-format',
  \'scrooloose/nerdcommenter',
  \'scrooloose/nerdtree',
  \'terryma/vim-multiple-cursors',
  \'isRuslan/vim-es6',
  \'tpope/vim-fugitive',
  \'tpope/vim-sensible',
  \'vim-airline/vim-airline',
  \'vim-airline/vim-airline-themes',
  \'w0rp/ale',
  \'chiedo/vim-px-to-em',
  \'xuyuanp/nerdtree-git-plugin',
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

