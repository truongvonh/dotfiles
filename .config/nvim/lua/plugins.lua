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
		--use { 'wfxr/minimap.vim', run = ':!cargo install --locked code-minimap' }
		use 'norcalli/nvim-colorizer.lua'
		use 'rmehri01/onenord.nvim'
		use 'ray-x/starry.nvim'
		use 'ajmwagar/vim-deus'

		--" Utilities
		use 'sheerun/vim-polyglot'
		use 'jiangmiao/auto-pairs'
		use 'ap/vim-css-kolor'
		use 'preservim/nerdtree'
		use 'scrooloose/nerdcommenter'
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		use 'jose-elias-alvarez/null-ls.nvim'
		use 'neovim/nvim-lspconfig'
		use {
			"ray-x/lsp_signature.nvim",
		}
		use 'williamboman/nvim-lsp-installer'
		use 'lewis6991/impatient.nvim'
		use 'mhinz/vim-startify'
		use 'folke/which-key.nvim'
		use 'KabbAmine/vCoolor.vim'
		use 'junegunn/vim-easy-align'

		--" Telescope
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-telescope/telescope.nvim'
		use 'nvim-telescope/telescope-media-files.nvim'
		use 'nvim-telescope/telescope-live-grep-args.nvim'
		use 'elianiva/telescope-npm.nvim'
		use 'kyazdani42/nvim-web-devicons'

		--" Completion / linters / formatters

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
		use 'jose-elias-alvarez/nvim-lsp-ts-utils'
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
		use 'terryma/vim-multiple-cursors' --https://github.com/terryma/vim-multiple-cursors
		use 'terryma/vim-smooth-scroll'

		--use { 'ellisonleao/glow.nvim', branch = 'main' }
		use 'rcarriga/nvim-notify'
		use 'akinsho/toggleterm.nvim'
		use 'voldikss/vim-floaterm'
		use 'szw/vim-g'

		use 'JuliaEditorSupport/julia-vim'
		use 'mattn/emmet-vim'
		use { 'ray-x/navigator.lua', requires = { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' } }

		--"Debugger
		use 'mfussenegger/nvim-dap'
		use 'theHamsta/nvim-dap-virtual-text'

		-- Taking note with VIM
		use 'vimwiki/vimwiki'
		use 'plasticboy/vim-markdown'

		use({ "iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
			ft = { "markdown" },
		})
	end,
	config = { max_jobs = 10 },
})

require('plugin_configs')
