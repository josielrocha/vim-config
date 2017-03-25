" Map bc to run CSScomb. bc stands for beautify css
autocmd FileType css noremap <buffer> <C-f> :CSScomb<CR>

" Automatically comb your CSS on save
" autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

