let g:vdebug_keymaps = {
			\ "run" : "<F5>",
			\ "run_to_cursor" : "<F9>",
			\ "step_over" : "<F2>",
			\ "step_into" : "<F3>",
			\ "step_out" : "<F4>",
			\ "close" : "<F6>",
			\ "detach" : "<F7>",
			\ "set_breakpoint" : "<F10>",
			\ "get_context" : "<F11>",
			\ "eval_under_cursor" : "<F12>",
			\ "eval_visual" : "<Leader>e"
			\}

let g:vdebug_options = {
			\ "port" : 9001,
			\ "timeout" : 20,
			\ "server" : '',
			\ "on_close" : 'stop',
			\ "break_on_open" : 0,
			\ "ide_key" : '',
			\ "debug_window_level" : 0,
			\ "debug_file_level" : 0,
			\ "debug_file" : "",
			\ "path_maps": {
			\  "/var/www/html": "/home/josiel/workspace/vikings_qualidade/web"
			\ },
			\ "watch_window_style" : 'expanded',
			\ "marker_default" : '⬦',
			\ "marker_closed_tree" : '▸',
			\ "marker_open_tree" : '▾',
			\ "continuous_mode" : 0
			\}

" :Breakpoint <type> <args>: set a breakpoint of any type (see :help VdebugBreakpoints)
" :VdebugEval <code>: evaluate some code and display the result
" <Leader>e: evaluate the expression under visual highlight and display the result

