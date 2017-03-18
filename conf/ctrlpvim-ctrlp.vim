" Variables
let ctrlp_match_window = 'bottom,order:btt,min:0,max:20,results:60'
let ctrlp_mruf_max = 25000
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_depth = 30
let g:ctrlp_max_files = 30
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_working_path_mode = 'ra'

"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|target|build)',
  \ 'file': '\v\.(exe|so|dll|zip|tar|gz|bz2|class|rar|7zip|jar|war)$',
  \ }

" Arquivos ignorados
set wildignore+=*/node_modules/*,*/dist/*,*.so,*.class,*.git,*/.git/*,*.tar.gz,*.zip,*.bz2,*/tmp/*,*/.tmp/*,*/target/*,*/build/*,/*pagseguro-*,*/sandbox/*,*/sap-integration*,*/red-batch/*,*/rabbit-support/*,*/testes-integracao/*,*/efrete*,*/content-policy*,*/admin*

