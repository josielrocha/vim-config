call plug#begin('~/.vim/plugged')

" Plugins
let plugins = [
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


for plugin in plugins
	Plug plugin
endfor

call plug#end()

" Config files
let config_files = [
  \'airblade-vim-gitgutter.vim',
  \'chiedo-vim-px-to-em.vim',
  \'jistr-vim-nerdtree-tabs.vim',
  \'nlknguyen-papercolor-theme.vim',
  \'scrooloose-nerdtree.vim',
  \'user-settings.vim',
  \'vim-airline-vim-airline-themes.vim',
  \'vim-airline-vim-airline.vim',
  \'xuyuanp-nerdtree-git-plugin.vim',
\]

for config_file in config_files
	execute 'source ' . join([expand("%:p:h"), "conf", config_file], "/")
endfor

