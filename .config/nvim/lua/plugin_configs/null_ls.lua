local status_ok, null_ls = pcall(require, "null-ls")

if not status_ok then
	return
end


local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover

null_ls.setup {
	diagnostics_format = "[#{c}] #{m} (#{s})",
	cmd = { "nvim" },
	debounce = 150,
	autostart = true,
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.completion.spell,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
			augroup LspFormatting
				autocmd! * <buffer>
				autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
			augroup END
			]])
		end
	end,
}
