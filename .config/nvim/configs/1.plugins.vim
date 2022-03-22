call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'elvessousa/sobrio'
    Plug 'glepnir/dashboard-nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Theme
    Plug 'morhetz/gruvbox'
    Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    "Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "Plug 'ncm2/float-preview.nvim'
    "Plug 'rmagatti/goto-preview'
    Plug 'jose-elias-alvarez/null-ls.nvim'
    Plug 'neovim/nvim-lspconfig'
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

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'kdheepak/lazygit.nvim'
call plug#end()
