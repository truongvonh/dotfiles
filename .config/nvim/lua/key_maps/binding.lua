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
key_map("n", "<space>nr", "<Cmd>luafile %<CR>")
key_map("n", "Be", "<Cmd>b#<CR>") --Back to current file

--key_map("n", "<A-S-Left>", "<C-W>2<") --Back to current file
--key_map("n", "<A-S-Right>", "<C-W>2>") --Back to current file
--key_map("n", "<A-S-Up>", "<C-W>2+") --Back to current file
--key_map("n", "<A-S-Down>", "<C-W>2-") --Back to current file
key_map("n", "<C-Left>", "<C-W>2<") --Back to current file
key_map("n", "<C-Right>", "<C-W>2>") --Back to current file
key_map("n", "<C-Up>", "<C-W>2+") --Back to current file
key_map("n", "<C-Down>", "<C-W>2-") --Back to current file


--" ============================ "
--" Telescope mapping
--" ============================ "
key_map("n", "ff", ":Telescope find_files hidden=true<CR>")
key_map("n", "fb", ":Telescope buffers theme=dropdown<CR>")
key_map("n", "fp", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
key_map("n", "fg", ":Telescope live_grep<CR>")
key_map("n", "tr", "<Cmd>Telescope npm scripts theme=dropdown<CR>", { silent = true }) -- Open current npm scripts
key_map("n", "<space>cl", "<Cmd>Telescope colorscheme theme=dropdown<CR>", { silent = true }) -- Open current npm scripts

--" ============================ "
--" Floaterm mapping
--" ============================ "
key_map("n", "<space>ft", "<Cmd>FloatermToggle<CR>")



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
--key_map("n", "<C-q>", "<Cmd>jClose<CR>")


--" ============================ "
--" Nerdtree mapping
--" ============================ "
key_map("n", "<C-f>", ":NvimTreeFindFile<CR>")
key_map("n", "<C-t>", ":NvimTreeToggle<CR>")
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
key_map("n", "wk", "<Cmd>WhichKey<CR>")


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

--" ============================ "
--" Debugger config binding
--" ============================ "
key_map("n", "<space>db", "<cmd>lua attach_debugger()<CR>", { silent = true }) --start nvim debugger
key_map("n", "<space>tp", "<cmd>DapToggleBreakpoint<CR>", { silent = true }) --start nvim debugger
key_map("n", "<space>lp", "<cmd>lua log_breakpoint_result()<CR>", { silent = true }) --log info of a breakpoint
key_map("n", "<space>dr", "<cmd>lua require('dap').clear_breakpoints()<CR>", { silent = false }) --remove all breakpoints

--" ============================ "
--" VIMStartify config binding
--" ============================ "
key_map("n", "<C-q>", "<cmd>SClose<CR>", { silent = true }) --log info of a breakpoint
