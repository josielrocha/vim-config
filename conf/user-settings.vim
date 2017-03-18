set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required
syntax on

" Filetypes
au BufNewFile,BufRead *.json,*.htmlhintrc,*.eslintrc set ft=json

" Autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html,xhtml set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,less,scss,sass set omnifunc=csscomplete#CompleteCSS

" Source Format
nnoremap <c-f> :call JsBeautify()<cr>
autocmd FileType javascript nnoremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document (used by gd)
set nowrap " do not automatically wrap on load
set fo-=t  " do not automatically wrap text when typing
let &colorcolumn=join(range(81, 81), ",")
highlight ColorColumn ctermbg=8

" Tab navigation like Firefox.
nnoremap <C-t>     :tabnew<CR>

" Indentação
set tabstop=4 softtabstop=0 shiftwidth=4 smarttab
set listchars=tab:>\ ,trail:·,extends:\#,nbsp:.
set list!

" Useful settings
set history=500
set undolevels=200

" Destacando a linha onde o cursor está
set cursorline

augroup Ack
	nnoremap <Leader>f :Ack!<Space>
augroup END

" Fold
augroup vimrc
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

