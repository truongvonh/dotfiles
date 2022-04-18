require('bufferline').setup {
	options = {
		mode = "buffers",
		close_command = "bdelete! %d",
		indicator_icon = '▎',
		modified_icon = '●',
		show_buffer_icons = true,

		separator_style = "tab",
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		max_name_length = 35,
		max_prefix_length = 15,

		diagnostics = 'nvim_lsp',
		custom_areas = {
			right = function()
				local result = {}
				local seve = vim.diagnostic.severity
				local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
				local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
				local info = #vim.diagnostic.get(0, { severity = seve.INFO })
				local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

				if error ~= 0 then
					table.insert(result, { text = "  " .. error, guifg = "#EC5241" })
				end

				if warning ~= 0 then
					table.insert(result, { text = "  " .. warning, guifg = "#EFB839" })
				end

				if hint ~= 0 then
					table.insert(result, { text = "  " .. hint, guifg = "#A3BA5E" })
				end

				if info ~= 0 then
					table.insert(result, { text = "  " .. info, guifg = "#7EA9A7" })
				end
				return result
			end,
		}
	}
}
