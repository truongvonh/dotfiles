local status_ok, wk = pcall(require, "which-key")

if not status_ok then
	return
end

wk.setup {
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
}

wk.register({
	name = 'Terminal',
	h = { ':ToggleTerm<CR>', 'Horizontal' },
	v = { ':ToggleTerm direction=vertical<CR>', 'Vertical' },
	f = { ':ToggleTerm direction=float<CR>', 'Float' },
}, {
	prefix = 'T',
	noremap = true,
	silent = true,
	mode = 'n',
})

wk.register({
	name = 'Packer',
	i = { '<cmd>PackerInstall<CR>', 'PackerInstall' },
	r = { '<cmd>PackerClean<CR>', 'PackerClean' },
	u = { '<cmd>PackerUpdate<CR>', 'PackerUpdate' },
}, {
	prefix = 'P',
	noremap = true,
	silent = true,
	mode = 'n',
})
