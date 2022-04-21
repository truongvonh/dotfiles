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
key_map("n", "zz", "<Cmd>q<CR>", { silent = true })
key_map("n", "nr", "<Cmd>luafile %<CR>")
key_map("n", "be", "<Cmd>b#<CR>") --Back to current file

key_map("n", "<A-S-Left>", "<C-W>2<") --Back to current file
key_map("n", "<A-S-Right>", "<C-W>2>") --Back to current file
key_map("n", "<A-S-Up>", "<C-W>2+") --Back to current file
key_map("n", "<A-S-Down>", "<C-W>2-") --Back to current file


--" ============================ "
--" Telescope mapping
--" ============================ "
key_map("n", "ff", ":Telescope find_files hidden=true<CR>")
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
--" Vim test binding
--" ============================ "
key_map("n", "tn", "<Cmd>TestNearest<CR>")
key_map("n", "tf", "<Cmd>TestFile<CR>")


--" ============================ "
--" LSP config binding
--" ============================ "
key_map("n", "gi", "<cmd>lua vim.diagnostic.open_float()<CR>")
key_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
key_map("n", "gd", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
key_map("n", "rn", "<cmd>lua require('navigator.rename').rename()<CR>")
key_map("n", "ac", "<cmd>lua require('navigator.codeAction').code_action()<CR>")
key_map("n", "gr", "<cmd>lua require('navigator.reference').reference()<CR>")
key_map("n", "Ef", "<Cmd>EslintFixAll<CR>")
