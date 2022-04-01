call plug#begin()
    " Appearance
    Plug 'windwp/windline.nvim'

    Plug 'akinsho/bufferline.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'elvessousa/sobrio'
    "Plug 'mhinz/vim-startify'
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Theme
    Plug 'morhetz/gruvbox'
    Plug 'navarasu/onedark.nvim'
    Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'jose-elias-alvarez/null-ls.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kamykn/spelunker.vim'
    Plug 'williamboman/nvim-lsp-installer'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-media-files.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'
    Plug 'neoclide/coc-jest'

    " Git
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'kdheepak/lazygit.nvim'

    "Other
    Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

call plug#end()
