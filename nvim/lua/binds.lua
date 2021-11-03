local opts = {noremap = true, silent = true}
local terminal = 't'
local insert = 'i'
local normal = 'n'

vim.api.nvim_set_keymap(insert, 'jj', '<ESC>', opts)
vim.api.nvim_set_keymap(terminal, 'jj', '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap(normal, 'H', '0', opts)
vim.api.nvim_set_keymap(normal, 'L', '$', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>w', ':w<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>q', ':q<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>vs', ':vsplit<SPACE>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>bs', ':split<SPACE>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ev', ':find $HOME/.config/nvim/init.vim<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>sv', ':source $HOME/.config/nvim/init.vim<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>eb', ':find $HOME/.config/bspwm/bspwmrc<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>es', ':find $HOME/.config/sxhkd/sxhkdrc<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ek', ':find $HOME/.config/kitty/kitty.conf<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ep', ':find $HOME/.config/picom/picom.conf<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ez', ':find $HOME/.config/zathura/zathurarc<CR>', opts)


vim.api.nvim_set_keymap(normal, '<LEADER>pi', ':PackerInstall<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>pu', ':PackerUpdate<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>pc', ':PackerClean<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>pm', ':PackerCompile<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ps', ':PackerSync<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tt', ':TSBufToggle highlight<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tu', ':TSHighlightCapturesUnderCursor<CR>', opts)
