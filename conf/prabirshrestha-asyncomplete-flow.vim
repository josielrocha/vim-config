augroup prabirshrestha/asyncomplete-flow
	au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#flow#get_source_options({
				\ 'name': 'flow',
				\ 'whitelist': ['javascript'],
				\ 'completor': function('asyncomplete#sources#flow#completor'),
				\ 'config': {
				\    " Resolves 'flow' in the closest node_modules/.bin directory (in case
				\    " flow is installed via 'npm install flow-bin' locally). Falls back to
				\    " 'flowbin_path' (see below) if can't find it.
				\    'prefer_local': 1
				\    " Path to 'flow' executable.
				\    'flowbin_path': expand('bin/flow'),
				\  },
				\ }))
augroup END

