augroup javacomplete2
	autocmd FileType java setlocal omnifunc=javacomplete#Complete

	" mappings
	nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
	imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
	nmap <F5> <Plug>(JavaComplete-Imports-Add)
	imap <F5> <Plug>(JavaComplete-Imports-Add
	nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
	imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
augroup END
