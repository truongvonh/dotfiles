local actions = require('telescope.actions')
local actions_state = require('telescope.actions.state')
local  pickers = require('telescope.pickers')
local  finders = require('telescope.finders')
local  sorters = require('telescope.sorters')
local dropdown = require('telescope.themes').get_dropdown()

local function handle_set_colorschemes()
	local selected = actions_state.get_selected_entry()

	local cmd = 'colorscheme ' .. selected[1]
	vim.cmd(cmd)

end

local function handle_enter (prompt_buffer)	
	handle_set_colorschemes()
	actions.close(prompt_buffer)
end

local function handle_next_color (prompt_buffer)	
	actions.move_selection_next(prompt_buffer)
	handle_set_colorschemes()

end

local function handle_prev_color (prompt_buffer)	
	actions.move_selection_previous(prompt_buffer)
	handle_set_colorschemes()
end

local all_colors = vim.fn.getcompletion("", "color")


local opts = {
	layout_strategy = 'vertical',
	sorting_strategy = 'ascending',

	finder = finders.new_table(all_colors),
	sorter = sorters.get_generic_fuzzy_sorter({}),

	attach_mappings = function(_, map)
		map('i', '<CR>', handle_enter)
		map('i', '<C-n>', handle_next_color)
		map('i', '<C-p>', handle_prev_color)

		map('n', '<CR>', handle_enter)
		map('n', 'j', handle_next_color)
		map('n', 'k', handle_prev_color)
		return true
	end

}

local colors=pickers.new(dropdown,opts)

colors:find()

