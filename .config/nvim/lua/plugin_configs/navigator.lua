local status_ok, navigator = pcall(require, "navigator")

if not status_ok then
	return
end

--require('go').setup({
	--run_in_floaterm = true,
	--test_efm = true,
	--lsp_diag_hdlr = false, -- hook lsp diag handler
	--gofmt = "gopls",
	--lsp_cfg = true,
	--lsp_on_attach = true,
--})


navigator.setup({
	debug = false, -- log output, set to true and log path: ~/.cache/nvim/gh.log
	width = 0.75, -- max width ratio (number of cols for the floating window) / (window width)
	height = 0.3, -- max list window height, 0.3 by default
	preview_height = 0.35, -- max height of preview windows
	border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }, -- border style, can be one of 'none', 'single', 'double',
	-- 'shadow', or a list of chars which defines the border
	on_attach = function(client, bufnr)
		-- your hook
	end,

	default_mapping = true, -- set to false if you will remap every key
	keymaps = { 
		--{ key = "gK", func = "declaration()" } 
	}, -- a list of key maps
	treesitter_analysis = true, -- treesitter variable context
	transparency = 80, -- 0 ~ 100 blur the main window, 100: fully transparent, 0: opaque,  set to nil or 100 to disable it

	lsp_signature_help = true, -- if you would like to hook ray-x/lsp_signature plugin in navigator
	signature_help_cfg = nil, -- if you would like to init ray-x/lsp_signature plugin in navigator, and pass in your own config to signature help
	icons = {
		code_action_icon = "🏏",
		diagnostic_head = '🐛',
		diagnostic_head_severity_1 = "🈲",
	},
	lsp = {
		code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
		--format_on_save = true, -- set to false to disable lsp code format on save (if you are using prettier/efm/formater etc)
		disable_format_cap = { "tsserver", "jsonls" },
		-- a list of lsp disable format capacity (e.g. if you using efm or vim-codeformat etc), empty {} by default
		disable_lsp = { 'denols' },
		-- a list of lsp server disabled for your project, e.g. denols and tsserver you may
		-- only want to enable one lsp server
		-- to disable all default config and use your own lsp setup set
		-- disable_lsp = 'all'
		-- Default {}
		diagnostic = {
			underline = true,
			virtual_text = true, -- show virtual for diagnostic message
			update_in_insert = true, -- update diagnostic message in insert mode
		},

		diagnostic_scrollbar_sign = { '▃', '▆', '█' }, -- experimental:  diagnostic status in scroll bar area; set to false to disable the diagnostic sign,
		-- for other style, set to {'╍', 'ﮆ'} or {'-', '='}
		diagnostic_virtual_text = true, -- show virtual for diagnostic message
		diagnostic_update_in_insert = false, -- update diagnostic message in insert mode
		disply_diagnostic_qf = true, -- always show quickfix if there are diagnostic errors, set to false if you  want to
	}
})
