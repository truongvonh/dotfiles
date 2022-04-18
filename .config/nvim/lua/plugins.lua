require('packer').startup({
	function(use)
		use('wbthomason/packer.nvim') -- package manager

		-- Appearance
		--
		use 'akinsho/bufferline.nvim'
		use('windwp/windline.nvim')
		use 'ryanoasis/vim-devicons'
		use 'lukas-reineke/indent-blankline.nvim'

		--" Theme
		use 'morhetz/gruvbox'
		use 'bluz71/vim-moonfly-colors'
		use { 'wfxr/minimap.vim', run = ':!cargo install --locked code-minimap' }
		use 'folke/tokyonight.nvim'

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
		--use 'windwp/nvim-spectre'
		use 'folke/which-key.nvim'

		--" Telescope
		use 'nvim-lua/popup.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-telescope/telescope.nvim'
		use 'nvim-telescope/telescope-media-files.nvim'
		use 'kyazdani42/nvim-web-devicons'

		--" Completion / linters / formatters
		use { 'neoclide/coc.nvim', branch = 'master', run = 'yarn install' }
		use 'plasticboy/vim-markdown'
		use 'neoclide/coc-jest'
		use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

		--" Git
		use 'kdheepak/lazygit.nvim'
		use 'Xuyuanp/nerdtree-git-plugin'
		use 'lewis6991/gitsigns.nvim'

		--"Testing
		use 'roxma/nvim-yarp'
		use 'roxma/vim-hug-neovim-rpc'
		use 'vim-test/vim-test'
		use { 'rcarriga/vim-ultest', run = ':UpdateRemotePlugins' }

		--"Other
		use 'editorconfig/editorconfig-vim'
		use 'rhysd/accelerated-jk'
		use("rmagatti/auto-session")

		use { 'ellisonleao/glow.nvim', branch = 'main' }
		use 'rcarriga/nvim-notify'
		use 'akinsho/toggleterm.nvim'
	end,
	--config = { max_jobs = 10 },
})

require('plugin_configs')
