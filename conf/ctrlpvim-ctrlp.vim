" Variables
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_lazy_update = 500 "Somente atualiza a janela de resultados após uma pausa na digitação
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:500'
let g:ctrlp_max_depth = 1000
let g:ctrlp_max_files = 10000
let g:ctrlp_mruf_max = 1000000
let g:ctrlp_root_markers = ['.git', 'pom.xml', '.hg', '.svn']
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_tabpage_position = 'l'
let g:ctrlp_use_caching = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_working_path_mode = 'ra'

"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|target|build)',
	\ 'file': '\v\.(exe|so|dll|zip|tar|gz|bz2|class|rar|7zip|jar|war)$',
	\ }

" Arquivos ignorados
set wildignore+=node_modules,dist,*.so,*.class,*.git,.git,*.tar.gz,*.zip,*.bz2,tmp,*.tmp,target,build

