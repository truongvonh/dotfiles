require("indent_blankline").setup {
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = false,
}

require('telescope').load_extension('media_files')
--  woord

require 'telescope'.setup {
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = "$ ",
		color_devicons = true,
		previewer = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
	},
	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
		media_files = {
			defaults = { "png", "jpg", "mp4", "webm", "pdf" },
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg",
		}
	},

	require('telescope').register_extension {
		setup = function(ext_config)
			filetypes = ext_config.filetypes or { "png", "jpg", "mp4", "webm", "pdf" }
			--find_cmd = ext_config.find_cmd or "fd"
			find_cmd = ext_config.find_cmd or "rg"
		end,
		exports = {
			media_files = {
				defaults = { "png", "jpg", "mp4", "webm", "pdf" },
				filetypes = { "png", "webp", "jpg", "jpeg" },
				find_cmd = "rg",
			}
		},
	}
}

require 'nvim-web-devicons'.get_icons()

require 'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	sync_install = false,

	highlight = {
		enable = true,
		disable = {},
		additional_vim_regex_highlighting = false,
	},
}
