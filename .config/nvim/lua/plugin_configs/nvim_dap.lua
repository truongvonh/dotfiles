local status_ok, dap = pcall(require, 'dap')

if not status_ok then
	return
end

local status_dap_virtual_text_ok, dap_virtual_text = pcall(require, 'nvim-dap-virtual-text')

if not status_dap_virtual_text_ok then
	return
end


vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointRejected', { text = '❌', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '✅', texthl = '', linehl = '', numhl = '' })

function attach_debugger()
	print("attaching")
	dap.run({
		type = 'node2',
		request = 'attach',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		skipFiles = { '<node_internals>/**/*.js' },
	})
end

function log_breakpoint_result()
	local widgets = require "dap.ui.widgets";
	widgets.centered_float(widgets.scopes)
end

function debug_jest(testName, filename)
	print("starting " .. testName .. " in " .. filename)
	dap.run({
		type = 'node2',
		request = 'launch',
		cwd = vim.fn.getcwd(),
		runtimeArgs = { '--inspect-brk', '/usr/local/bin/jest', '--no-coverage', '-t', testName, '--', filename },
		sourceMaps = true,
		protocol = 'inspector',
		skipFiles = { '<node_internals>/**/*.js' },
		console = 'integratedTerminal',
		port = 9229,
	})
end

function attachToRemote()
	print("attaching")
	dap.run({
		type = 'node2',
		request = 'attach',
		address = "127.0.0.1",
		port = 9229,
		localRoot = vim.fn.getcwd(),
		remoteRoot = "/home/vcap/app",
		sourceMaps = true,
		protocol = 'inspector',
		skipFiles = { '<node_internals>/**/*.js' },
	})
end

dap.adapters.node2 = {
	type = 'executable',
	command = 'node',
	args = { os.getenv('HOME') .. '/vscode-node-debug2/out/src/nodeDebug.js' },
}

dap.configurations.typescript = {
	{
		name = 'Launch',
		type = 'node2',
		request = 'launch',
		program = '${file}',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
		outFiles = { "${workspaceFolder}/dist/**/*.js", "!**/node_modules/**" },
		restart = true,
	},
	{
		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
		name = 'Attach to process',
		type = 'node2',
		request = 'attach',
		processId = require 'dap.utils'.pick_process,
	},
}

dap_virtual_text.setup()
