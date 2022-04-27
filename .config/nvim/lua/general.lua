vim.cmd('language en_us')

vim.o.number = true
vim.o.hidden = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.title = true
vim.o.wildmenu = true
vim.o.autoindent = true
vim.o.autoread = true
vim.o.expandtab = true

vim.o.t_Co = 'a'
vim.o.mouse = 'a'
vim.o.encoding = 'UTF-8'
vim.o.inccommand = 'split'
vim.o.clipboard = 'unnamedplus'
vim.o.background = 'dark'
vim.o.completeopt = 'menu,menuone,noselect'
--vim.o.completeopt = 'noinsert,menuone,noselect,preview'

vim.o.ttimeoutlen = 0

vim.g.noswapfile = true
vim.wo.wrap = false

vim.opt.list = true
vim.opt.listchars:append("space: ")
vim.opt.listchars:append("eol:↴")
vim.o.hidden = true
vim.lsp.util.preview_location = true
vim.g.vimspector_enable_mappings = 'HUMAN'

vim.cmd([[
	set completeopt=menu,menuone,noselect
	autocmd CursorHold * silent! checktime
]])



vim.diagnostic.config({
    virtual_text = {
        source = "always", -- Or "if_many"
    },
    float = {
        source = "always", -- Or "if_many"
    },
})
