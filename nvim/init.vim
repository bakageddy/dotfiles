filetype plugin on
set nobk noswapfile udf udir=~/.config/nvim/undodir/
set backspace=eol,indent,start
set incsearch
set nohls
set nosmd
set ts=4 sts=4 et sta si
set shiftwidth=4
set cot=menuone,noselect shm+=c
set so=10 siso=10
set ls=2
set ch=2 sc
set guicursor=n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
set ut=50
set nowrap
set spr sb
set list
set lisp
set clipboard+=unnamedplus
set termguicolors
language en_US.UTF-8


call plug#begin('~/.config/nvim/plugged/')

" Quality of Life Plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'airblade/vim-rooter'

" Auto Completion
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
" Plug 'ray-x/cmp-treesitter'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'windwp/nvim-autopairs'

" Colorschemes
Plug 'shaunsingh/nord.nvim'
Plug 'AlessandroYorba/Alduin'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop'}

call plug#end()

" colorscheme aquarium
" colorscheme nord
colorscheme alduin

highlight colorcolumn ctermbg=7 guibg=grey
set colorcolumn=80
let mapleader = " "

" Quality of life
inoremap jj                                 <ESC>
tnoremap jj                                 <C-\><C-n>
nnoremap H                                  0
nnoremap L                                  $
nnoremap <leader>w                          :w<CR>
nnoremap <leader>q                          :q!<CR>
nnoremap <leader>vs                         :vsplit<SPACE>
nnoremap <leader>bs                         :split<SPACE> 
nnoremap <leader>sv                         :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>ev                         :find ~/.config/nvim/init.vim<CR>
nnoremap <leader>es                         :find ~/.config/sxhkd/sxhkdrc<CR>
nnoremap <leader>eb                         :find ~/.config/bspwm/bspwmrc<CR>
nnoremap <leader>ek                         :find ~/.config/kitty/kitty.conf<CR>
nnoremap <leader>ep                         :find $HOME/.config/picom/picom.conf<CR>
nnoremap <leader>ez                         :find $HOME/.config/zathura/zathurarc<CR>

" Some vim-plug commands
nnoremap <leader>pi                         :PlugInstall<CR>
nnoremap <leader>pu                         :PlugUpdate<CR>
nnoremap <leader>pc                         :PlugClean<CR>
nnoremap <leader>tt                         :TSBufToggle highlight<CR>
nnoremap <leader>tu                         :TSHighlightCapturesUnderCursor<CR>

" Telescope is the best!!
nnoremap <leader>tf                         <CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <leader>th                         <CMD>lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>tr                         <CMD>lua require('telescope.builtin').treesitter()<CR>
nnoremap <leader>tg                         <CMD>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>ts                         <CMD>lua require('telescope.builtin').grep_string()<CR>
nnoremap <leader>ty                         <CMD>lua require('telescope.builtin').filetypes()<CR>
nnoremap <leader>tb                         <CMD>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>tc                         <CMD>lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>tm                         <CMD>lua require('telescope.builtin').man_pages()<CR>
nnoremap <leader>tp                         :Telescope project<CR>

" For Compiling a single file
nnoremap <leader>gcc                        :!gcc -Wall % && ./a.out<CR>
nnoremap <leader>cl                         :!sbcl --script %<CR>
nnoremap <leader>sl                         :!gsi-script %<CR>
nnoremap <leader>ua                         :!luajit %<CR>

" Compile a project
nnoremap <leader>rr                         :RustRun<CR>

" File Exploring
nnoremap <leader>on                         :Vex<CR>:vertical resize 30<CR>
nnoremap <leader>rb                         <C-^>

" Paste from clipboard
nnoremap <leader>p                          "+p<CR>

" Disable arrow keys
nnoremap <UP>                               <NUL>
nnoremap <DOWN>                             <NUL>
nnoremap <LEFT>                             <NUL>
nnoremap <RIGHT>                            <NUL>

inoremap <UP>                               <NUL>
inoremap <DOWN>                             <NUL>
inoremap <LEFT>                             <NUL>
inoremap <RIGHT>                            <NUL>

" Window Navigation
nnoremap <leader>j                          :wincmd j<CR>
nnoremap <leader>k                          :wincmd k<CR>
nnoremap <leader>l                          :wincmd l<CR>
nnoremap <leader>h                          :wincmd h<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:rooter_patterns = ['.git', '.gitignore', 'Makefile', 'bin/activate.sh']
let g:rooter_change_directory_for_non_project_files = ''
let g:rooter_silent_chdir = 1

autocmd FileType rust setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lisp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
