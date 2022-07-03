local status_ok, telescope = pcall(require, "telescope")

if not status_ok then
	return
end

telescope.load_extension('media_files')
telescope.load_extension('live_grep_args')

telescope.setup {
	preview_cutoff = 1,
	layout_strategy = "flex",
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = "$ ",
		color_devicons = true,
		--previewer = true,

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

	telescope.register_extension {
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
