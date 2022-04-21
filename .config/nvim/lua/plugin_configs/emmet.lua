vim.cmd([[

	let g:user_emmet_install_global = 1
	autocmd FileType html,css, jsx, tsx EmmetInstall
	let g:user_emmet_mode='a' 
]])

