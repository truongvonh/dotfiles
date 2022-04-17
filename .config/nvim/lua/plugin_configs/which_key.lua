local wk = require('which-key')
wk.setup {
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
}

wk.register({
	f = {
		name = 'File',
		b = { '<cmd>lua require("telescope.builtin").buffers()<CR>', 'Buffers' },
		f = { '<cmd>lua require("telescope.builtin").find_files()<CR>', 'Files' },
		w = { '<cmd>lua require("telescope.builtin").file_browser()<CR>', 'File Browser' },
		o = { '<cmd>lua require("telescope.builtin").oldfiles()<CR>', 'Prev Open Files' },
	},
	g = {
		name = 'Git',
		f = { '<cmd>lua require("telescope.builtin").git_files()<CR>', 'Files' },
		s = { '<cmd>lua require("telescope.builtin").git_status()<CR>', 'Status' },
		c = { '<cmd>lua require("telescope.builtin").git_commits()<CR>', 'Commit Log' },
		l = { '<cmd>lua require("telescope.builtin").git_bcommits()<CR>', 'Commit Log Current Buffer' },
		b = { '<cmd>lua require("telescope.builtin").git_branches()<CR>', 'Branches' },
		t = { '<cmd>lua require("telescope.builtin").git_stash()<CR>', 'Stash' },
		--d = { ':DiffviewOpen<CR>', 'Open Diff View' },
		--x = { ':DiffviewClose<CR>', 'Close Diff View' },
		--r = { ':DiffviewRefresh<CR>', 'Diff View Refresh' },
		--e = { ':DiffviewFocusFiles<CR>', 'Diff View Focus Files' },
		--h = { ':DiffviewFileHistory<CR>', 'Diff View File History' },
	},
	s = {
		name = 'Terminal',
		h = { ':ToggleTerm<CR>', 'Horizontal' },
		v = { ':ToggleTerm direction=vertical<CR>', 'Vertical' },
		f = { ':ToggleTerm direction=float<CR>', 'Float' },
	},
}, {
	prefix = 'm',
	noremap = true,
	silent = true,
	mode = 'n',
})
