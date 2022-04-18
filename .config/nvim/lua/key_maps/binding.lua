local function key_map(mode, custom_key_binding, command, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, custom_key_binding, command, options)
end

--" ============================ "
--" Common usage mapping
--" ============================ "
key_map("n", "j", "<Plug>(accelerated_jk_gj)")
key_map("n", "k", "<Plug>(accelerated_jk_gk)")
key_map("n", "<C-s>", ":w!<CR>", { silent = true })
--key_map("n", "zz", "<Cmd>SClose<CR>", { silent = true })
key_map("n", "zz", "<Cmd>q<CR>", { silent = true })
key_map("n", "nr", "<Cmd>luafile %<CR>")

--" ============================ "
--" Telescope mapping
--" ============================ "
key_map("n", "ff", ":Telescope find_files<CR>")
key_map("n", "fb", ":Telescope buffers<CR>")
key_map("n", "fg", ":Telescope live_grep<CR>")


--" ============================ "
--" Move statement up and down with [Alt + k, j]
--" ============================ "
--" Move 1 more lines up or down in normal and visual selection modes.
key_map("n", "K", ":m .-2<CR>==")
key_map("v", "K", ":m '<-2<CR>gv=gv")
key_map("n", "J", ":m .+1<CR>==")
key_map("v", "J", ":m '>+1<CR>gv=gv")

--" ============================ "
--" LazyGit mapping
--" ============================ "
key_map("n", "<C-g>", ":LazyGit<CR>", { silent = true })

--" ============================ "
--" Startify mapping
--" ============================ "
key_map("n", "<C-q>", "<Cmd>SClose<CR>")


--" ============================ "
--" Nerdtree mapping
--" ============================ "
key_map("n", "<C-f>", ":NERDTreeFind<CR>")
key_map("n", "<C-t>", ":NERDTreeToggle<CR>")
key_map("n", "mm", "<plug>NERDCommenterToggle")
key_map("v", "mm", "<plug>NERDCommenterToggle")

--" ============================ "
--" Prevent enter mapping
--" ============================ "
key_map("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<C-h>"]], { silent = true, expr = true })
key_map("i", "<cr>", [[pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"]], { silent = true, expr = true })

--" ============================ "
--" Whichkey  mapping
--" ============================ "
key_map("n", "mk", "<Cmd>WhichKey<CR>")


--" ============================ "
--" Coc mapping
--" ============================ "
-- Old mappings
--nmap <silent> gd <Plug>(coc-definition)
--nmap <silent> gy <Plug>(coc-type-definition)
--nmap <silent> gi <Plug>(coc-implementation)
--nmap <silent> gr <Plug>(coc-references)

--nmap <silent> rn <Plug>(coc-rename)
--nmap <leader> gc <Plug>(coc-codeaction)
--"nmap <leader> gn <Plug>(coc-rename)
--nmap <silent> <C-h> <Plug>(coc-diagnostic-info)
--nmap <leader> qf <Plug>(coc-fix-current)
--nmap ac :CocAction<CR>

key_map("n", "<C-h>", "<Plug>(coc-diagnostic-info)", { silent = true })
key_map("n", "gd", "<Plug>(coc-definition)", { silent = true })
key_map("n", "gi", "<Plug>(coc-implementation)", { silent = true })
key_map("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
key_map("n", "gr", "<Plug>(coc-references)", { silent = true })
key_map("n", "rn", "<Plug>(coc-rename)", { silent = true })
key_map("n", "ac", "<Cmd>CocAction<CR>", { silent = true })
key_map("n", "qf", "<Plug>(coc-fix-current)", { silent = true })