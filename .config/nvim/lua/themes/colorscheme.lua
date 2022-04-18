vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"neo-tree",
	"Trouble",
}

vim.g.startify_session_autoload = 0

vim.cmd('colorscheme gruvbox')
