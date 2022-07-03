require("indent_blankline").setup {
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = false,
}

require 'nvim-web-devicons'.get_icons()

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { 'lua', 'javascript', 'typescript', 'python' },
	sync_install = false,

	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
}
