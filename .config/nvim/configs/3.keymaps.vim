map <C-s> :w!<CR>
inoremap jk <ESC>
" ============================ "
" Basic mapping
" ============================ "
nmap <C-t> :NERDTreeToggle<CR>
nmap <C-i> :NERDTreeFind<CR>
" ===== clear after search =====
nmap <C-l> :noh<CR>
" ===== Hot reload NEOVIM config =====
nmap <C-r> :source ~/.config/nvim/init.vim<CR>
vmap mm <plug>NERDCommenterToggle
nmap mm <plug>NERDCommenterToggle

" ============================ "
" Coc mapping
" ============================ "
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> gc <Plug>(coc-codeaction)
nmap <leader> gn <Plug>(coc-rename)
nmap <silent> <C-h> <Plug>(coc-diagnostic-info)
nmap <leader> qf <Plug>(coc-fix-current)
nmap ac :CocAction<CR>

" ============================ "
" Telescope plugin configs keymaps
" ============================ "
"map <C-e> :FZF<CR>
"nmap ff :Rg<CR>
nnoremap <silent>ff :Telescope find_files<CR>
nnoremap <silent>fg :Telescope live_grep<CR>
nnoremap <silent>fb :Telescope buffers<CR>
nnoremap <silent>fh :Telescope help_tags<CR>
" ============================ "
" LazyGit configs keymaps
" ============================ "
"nnoremap <silent> <leader><C-g> :LazyGit<CR>
nmap <silent> <C-g> :LazyGit<CR>

" ============================ "
" Neovim dashboard configs
" ============================ "
let g:mapleader="\<Space>"
let g:dashboard_default_executive ='fzf'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" ============================ "
" Move statement up and down with [Alt + k, j]
" ============================ "
" Move 1 more lines up or down in normal and visual selection modes.
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
