augroup base
	set nocompatible              " be iMproved, required
	set encoding=utf-8
	filetype off                  " required
	syntax on
augroup END

augroup user-colorscheme
	let g:airline_theme='papercolor'
	colorscheme PaperColor
	set background=dark
augroup END

" Swap
augroup swap
	set noswapfile
	set nobackup
augroup END

augroup remap
	let mapleader = ","
augroup END

" Filetypes
augroup filetypes
	au BufNewFile,BufRead *.json,.babelrc,.htmlhintrc,.eslintrc set ft=json
augroup END

" Autocomplete
augroup autocomplete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css,less,scss,sass set omnifunc=csscomplete#CompleteCSS
augroup END

" Source Format
augroup format
	autocmd FileType javascript,json nnoremap <buffer>  <c-f> :call JsBeautify()<cr>
	autocmd FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
	autocmd FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>
augroup END

augroup navigation
	nnoremap <C-t>     :tabnew<CR>
augroup END

augroup visual-help
	set number " show line numbers
	set tw=79  " width of document (used by gd)
	set nowrap " do not automatically wrap on load
	set fo-=t  " do not automatically wrap text when typing
	let &colorcolumn=join(range(81, 81), ",")
	highlight ColorColumn ctermbg=8
	set tabstop=4 softtabstop=0 shiftwidth=4 smarttab
	set softtabstop=0 smarttab
	set cursorline
	set listchars=tab:>\ ,trail:·,extends:\#,nbsp:.
	set list
augroup END

" Useful settings
augroup history
	set history=500
	set undolevels=200
augroup END

" Fold
augroup fold
	set nofoldenable
	set foldmethod=indent
augroup END

" Clipboard
augroup clipboard
	if has('clipboard')
		set clipboard=unnamed
		if has('unnamedplus')
			set clipboard+=unnamedplus
		endif
	endif
augroup END

" Diff
augroup diff
	if &diff
		colorscheme Monokai
		let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
	endif
augroup END

augroup directory
	" No change current directory to current file automatically
	set noautochdir

	" Swap files in separated directory
	execute 'set directory=' . fnamemodify(expand($MYVIMRC), ':p:h') . '/.swapfiles//'
augroup END

" Disable arrow keys
augroup disable
	nnoremap <up> <nop>
	nnoremap <down> <nop>
	nnoremap <left> <nop>
	nnoremap <right> <nop>
	inoremap <up> <nop>
	inoremap <down> <nop>
	inoremap <left> <nop>
	inoremap <right> <nop>
augroup END

