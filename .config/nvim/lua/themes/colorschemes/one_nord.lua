local colors = require("onenord.colors").load()

require("onenord").setup({
	theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
	borders = true, -- Split window borders
	fade_nc = true, -- Fade non-current windows, making them more distinguishable

	custom_highlights = {
		TSConstructor = {
			fg = colors.dark_blue,
			bg = colors.bg
		},
	},
})
