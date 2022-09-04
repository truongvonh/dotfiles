vim.cmd([[
	let g:go_diagnostics_enabled='true'
	let g:go_code_completion_enabled = 1
	let g:go_fmt_autosave = 0
	let g:go_imports_autosave = 1
	let g:go_doc_balloon = 1
	let g:go_doc_popup_window = 1
	let g:go_diagnostics_enabled = 1
	let g:go_diagnostics_level = 1
	let g:go_highlight_variable_declarations = 1
	let g:go_highlight_variable_assignments = 1

	let g:syntastic_go_checkers = ['golint', 'govet']
	let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
]])
