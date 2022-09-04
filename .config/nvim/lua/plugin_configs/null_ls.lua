local status_ok, null_ls = pcall(require, "null-ls")

if not status_ok then
	return
end


--local diagnostics = null_ls.builtins.diagnostics
--local formatting = null_ls.builtins.formatting
--local hover = null_ls.builtins.hover

null_ls.setup {
	diagnostics_format = "[#{c}] #{m} (#{s})",
	cmd = { "nvim" },
	debounce = 50,
	autostart = true,
	filetypes = { 'ts', 'tsx' },
	debug = false,
	sources = {
		null_ls.builtins.formatting.stylua,
		--null_ls.builtins.formatting.prettier,

		--null_ls.builtins.formatting.eslint_d,
		--null_ls.builtins.formatting.eslint,
		--null_ls.builtins.completion.spell,
		null_ls.builtins.diagnostics.actionlint,
		null_ls.builtins.diagnostics.codespell,
		null_ls.builtins.diagnostics.editorconfig_checker,

		null_ls.builtins.diagnostics.golangci_lint,
		--null_ls.builtins.formatting.gofmt,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd([[
				augroup LspFormatting
				autocmd! * <buffer>
				autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
				augroup END
			]])
		end
	end,
}
