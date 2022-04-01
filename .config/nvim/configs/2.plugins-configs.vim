let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeGitStatusWithFlags = 1
"let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

colorscheme onedark
let g:onedark_config = {
    \ 'style': 'warmer',
\}

" ============================ "
" WebdevIcons configs
" ============================ "
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1

" ============================ "
" NERDTreeGitStatus configs
" ============================ "
let g:NERDTreeGitStatusUntrackedFilesMode = 'normal' 
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" ============================ "
" FZF configs
" ============================ "
let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1

" ============================ "
" Lazy configs
" ============================ "
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" ============================ "
" Minimap configs
" ============================ "
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1
let g:minimap_close_filetypes = ['netrw', 'vim-plug']


" ============================ "
" VIM indent_blankline configs with lua script
" ============================ "
lua << EOF

  vim.opt.list = true
  vim.opt.listchars:append("space: ")
  vim.opt.listchars:append("eol:↴")
  --vim.o.hidden = true
  vim.lsp.util.preview_location = true

  vim.g.tokyonight_style = "night" -- storm | night
  vim.g.tokyonight_italic_functions = true
  vim.g.tokyonight_hide_inactive_statusline = true
  vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal" }
  vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
  --vim.g.mapleader = "<Space>"

  require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = false,
  }

  require('telescope').load_extension('media_files')
  --  woord

  require'telescope'.setup {
    defaults = {
      file_sorter = require("telescope.sorters").get_fzy_sorter,
      prompt_prefix = "$ ",
      color_devicons = true,
      previewer = true,

      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      },
      media_files = {
        defaults = {"png", "jpg", "mp4", "webm", "pdf"},
        filetypes = {"png", "webp", "jpg", "jpeg"},
        find_cmd = "rg",
      }
    },  

    require('telescope').register_extension {
      setup = function(ext_config)
        filetypes = ext_config.filetypes or {"png", "jpg", "mp4", "webm", "pdf"}
        --find_cmd = ext_config.find_cmd or "fd"
        find_cmd = ext_config.find_cmd or "rg"
      end,
      exports = {
        media_files = {
          defaults = {"png", "jpg", "mp4", "webm", "pdf"},
          filetypes = {"png", "webp", "jpg", "jpeg"},
          find_cmd = "rg",
        }
      },
    }
  }

  require'nvim-web-devicons'.get_icons()

  require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    sync_install = false,

    highlight = {
      enable = true,
      disable = {  },
      additional_vim_regex_highlighting = false,
    },
  }

  diagnostics = require'null-ls'.builtins.diagnostics
  formatting = require'null-ls'.builtins.formatting
  hover = require'null-ls'.builtins.hover

  require'null-ls'.setup {
    diagnostics_format = "[#{c}] #{m} (#{s})",
    debug = false,
    sources = {
      require("null-ls").builtins.formatting.stylua,
      require("null-ls").builtins.diagnostics.eslint,
      require("null-ls").builtins.completion.spell,
    },
  }

  local opts = { noremap=false, silent=true }
  
  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    --vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  --vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>ua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  end

  -- Use a loop to conveniently call 'setup' on multiple servers and
  -- map buffer local keybindings when the language server attaches
  local servers = { 'pyright', 'rust_analyzer', 'tsserver'}
  for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
      }
    }
  end
EOF

