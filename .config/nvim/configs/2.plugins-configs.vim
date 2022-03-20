let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1
let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

colorscheme gruvbox
"colorscheme embark
"let g:airline_theme = 'embark'
"let g:lightline = {
      "\ 'colorscheme': 'embark',
      "\ }

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
" VIM indent_blankline configs with lua script
" ============================ "
lua << EOF
  vim.opt.list = true
  vim.opt.listchars:append("space: ")
  vim.opt.listchars:append("eol:↴")
  vim.o.hidden = true
  --vim.g.mapleader = "<Space>"

  require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
  }

  require('telescope').load_extension('media_files')

  require'telescope'.setup {
    defaults = {
      file_sorter = require("telescope.sorters").get_fzy_sorter,
      prompt_prefix = "$ ",
      color_devicons = true,

      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      },
    },  extensions = {
    media_files = {
      -- filetypes whitelist
        defaults = {"png", "jpg", "mp4", "webm", "pdf"},
        filetypes = {"png", "webp", "jpg", "jpeg"},
        find_cmd = "rg" -- find command (defaults to `fd`)
      }
    },
  }

  require'nvim-web-devicons'.get_icons()
EOF


