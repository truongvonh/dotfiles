require('packer').startup({
	function(use)
		use('wbthomason/packer.nvim') -- package manager

		-- Appearance
		use 'akinsho/bufferline.nvim'
		use('windwp/windline.nvim')
		use 'ryanoasis/vim-devicons'
		use 'lukas-reineke/indent-blankline.nvim'
		--use 'TaDaa/vimade'

		--" Theme
		use 'morhetz/gruvbox'
		use { 'wfxr/minimap.vim', run = ':!cargo install --locked code-minimap' }
		use 'norcalli/nvim-colorizer.lua'
		use 'rmehri01/onenord.nvim'
		use 'ray-x/starry.nvim'

		--" Utilities
		use 'sheerun/vim-polyglot'
		use 'jiangmiao/auto-pairs'
		use 'ap/vim-css-color'
		use 'preservim/nerdtree'
		use 'scrooloose/nerdcommenter'
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		use 'jose-elias-alvarez/null-ls.nvim'
		use 'neovim/nvim-lspconfig'
		use 'williamboman/nvim-lsp-installer'
		use 'lewis6991/impatient.nvim'
		use 'mhinz/vim-startify'
		use 'folke/which-key.nvim'

		--" Telescope
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-telescope/telescope.nvim'
		use 'nvim-telescope/telescope-media-files.nvim'
		use 'kyazdani42/nvim-web-devicons'

		--" Completion / linters / formatters
		use 'plasticboy/vim-markdown'
		use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
		--use { 'neoclide/coc.nvim', branch = 'master', run = 'yarn install' }
		--use 'neoclide/coc-jest'

		-- nvim completion start --
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/nvim-cmp'

		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/vim-vsnip'
		--" For luasnip users.
		use 'L3MON4D3/LuaSnip'
		use 'saadparwaiz1/cmp_luasnip'
		-- nvim completion end --

		--" Git
		use 'kdheepak/lazygit.nvim'
		use 'Xuyuanp/nerdtree-git-plugin'
		use 'lewis6991/gitsigns.nvim'

		--"Testing
		use 'roxma/nvim-yarp'
		use 'roxma/vim-hug-neovim-rpc'
		use 'vim-test/vim-test'

		--"Other
		use 'editorconfig/editorconfig-vim'
		use 'rhysd/accelerated-jk'
		use("rmagatti/auto-session")

		use { 'ellisonleao/glow.nvim', branch = 'main' }
		use 'rcarriga/nvim-notify'
		use 'akinsho/toggleterm.nvim'
		use 'voldikss/vim-floaterm'
		use 'szw/vim-g'

		use 'JuliaEditorSupport/julia-vim'
		use 'mattn/emmet-vim'
		use { 'ray-x/navigator.lua', requires = { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' } }
		--use 'nvim-treesitter/nvim-treesitter-refactor'
		use 'simrat39/symbols-outline.nvim'

		--"Debugger
		use 'mfussenegger/nvim-dap'
		use 'theHamsta/nvim-dap-virtual-text'
	end,
	config = { max_jobs = 10 },
})

require('plugin_configs')
