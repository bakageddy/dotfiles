vim.o.splitright = true
vim.o.splitbelow = true
vim.o.incsearch = true
vim.o.smarttab = true
vim.o.showcmd = true
vim.o.termguicolors = true

vim.o.ruler = false
vim.o.showmode = false
vim.o.backup = false
vim.o.swapfile = false
vim.o.hlsearch = false

vim.o.laststatus = 2
vim.o.cmdheight = 2
vim.o.updatetime = 50

vim.o.undodir = "/home/dinu/.config/nvim/undodir/"
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"
vim.o.completeopt = "menuone,noselect"
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.backspace = "eol,indent,start"


vim.o.undofile = true
vim.bo.undofile = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.bo.lisp = true
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4


vim.wo.list = true
vim.wo.number = false
vim.wo.relativenumber = false
vim.wo.wrap = false

vim.o.scrolloff = 10
vim.wo.scrolloff = 10
vim.o.sidescrolloff = 10
vim.wo.sidescrolloff = 10

-- vim.cmd [[highlight colorcolumn ctermbg=7 guibg=grey]]
-- vim.wo.colorcolumn = "80"


vim.cmd [[language en_US.UTF-8]]
vim.cmd [[filetype plugin indent on]]
vim.cmd [[

autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType rust setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd FileType lisp setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

]]

vim.g.mapleader = ' '
vim.b.mapleader = ' '
