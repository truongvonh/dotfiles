vim.cmd([[ 
	autocmd CursorHold * silent! checktime
	au FileType markdown vmap <tab> :EasyAlign*<Bar><Enter>
	au FileType markdown map <Bar> vip :EasyAlign*<Bar><Enter>
]])
