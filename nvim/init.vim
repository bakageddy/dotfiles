filetype plugin on
set nobk noswapfile noudf udir=~/.config/nvim/undodir
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
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}

" Auto Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Colorschemes
Plug 'cocopon/iceberg.vim'
Plug 'adrian5/oceanic-next-vim'
Plug 'connorholyday/vim-snazzy'

call plug#end()

colorscheme iceberg

highlight colorcolumn ctermbg=7 guibg=grey
set colorcolumn=80

let g:lightline = {'colorscheme': 'iceberg'}

let mapleader = " "
" Quality of life
inoremap jj                                 <ESC>
tnoremap jj                                 <C-\><C-n>
nnoremap <leader>w                          :w<CR>
nnoremap <leader>q                          :q!<CR>
nnoremap <leader>vs                         :vsplit<SPACE>
nnoremap <leader>bs                         :split<SPACE> 
nnoremap <leader>sv                         :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>ev                         :find ~/.config/nvim/init.vim<CR>
nnoremap <leader>es                         :find ~/.config/sxhkd/sxhkdrc<CR>
nnoremap <leader>eb                         :find ~/.config/bspwm/bspwmrc<CR>
nnoremap <leader>ek                         :find ~/.config/kitty/kitty.conf<CR>

" Some vim-plug commands
nnoremap <leader>pi                         :PlugInstall<CR>
nnoremap <leader>pu                         :PlugUpdate<CR>
nnoremap <leader>pc                         :PlugClean<CR>
nnoremap <leader>tt                         :TSBufToggle highlight<CR>

" Telescope is the best!!
nnoremap <leader>tf                         <CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>
nnoremap <leader>tg                         <CMD>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>ts                         <CMD>lua require('telescope.builtin').grep_string()<CR>
nnoremap <leader>ty                         <CMD>lua require('telescope.builtin').filetypes()<CR>
nnoremap <leader>tb                         <CMD>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>tc                         <CMD>lua require('telescope.builtin').colorscheme()<CR>
nnoremap <leader>tp                         <CMD>lua require('telescope.builtin').planets()<CR>
nnoremap <leader>tm                         <CMD>lua require('telescope.builtin').man_pages()<CR>

" For Compiling a single file
nnoremap <leader>gcc                        :!gcc -Wall % && ./a.out<CR>

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



:lua << EOF
    local nvim_lsp = require('lspconfig')
    local servers = {'clangd', 'pylsp'}
    for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup {
            capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }
    end

    local cmp = require'cmp'

    cmp.setup({
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
        mapping = {
            ['<C-d>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.close(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = {
            {name = 'nvim_lsp'},
            {name = 'luasnip'},
            {name = 'buffer'},
        }
    })
    require'nvim-treesitter.configs'.setup {
        highlight = {
            enable = true,
        }
    }
    require'colorizer'.setup()

    require'telescope'.setup()

EOF


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
