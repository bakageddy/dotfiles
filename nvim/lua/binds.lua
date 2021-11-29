local opts = {noremap = true, silent = true}
local terminal = 't'
local insert = 'i'
local normal = 'n'

vim.api.nvim_set_keymap(insert, 'jj', '<ESC>', opts)
vim.api.nvim_set_keymap(terminal, 'jj', '<C-\\><C-n>', opts)
vim.api.nvim_set_keymap(normal, 'H', '0', opts)
vim.api.nvim_set_keymap(normal, 'L', '$', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>w', ':w<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>q', ':q!<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>vs', ':vsplit<SPACE>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>bs', ':split<SPACE>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ev', ':find $HOME/.config/nvim/init.vim<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>el', ':find $HOME/.config/nvim/<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>sv', ':source $HOME/.config/nvim/init.vim<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>sl', ':luafile %<CR>', opts)
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


vim.api.nvim_set_keymap(normal, '<LEADER>tf', '<CMD>lua require(\'telescope.builtin\').find_files({hidden = true})<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tn', '<CMD>lua require(\'telescope.builtin\').find_files({cwd = \'~/.config/\', hidden = true})<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>th', '<CMD>lua require(\'telescope.builtin\').help_tags()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tr', '<CMD>lua require(\'telescope.builtin\').treesitter()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tg', '<CMD>lua require(\'telescope.builtin\').live_grep()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ts', '<CMD>lua require(\'telescope.builtin\').grep_string()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ty', '<CMD>lua require(\'telescope.builtin\').filetypes()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tb', '<CMD>lua require(\'telescope.builtin\').buffers()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tc', '<CMD>lua require(\'telescope.builtin\').colorscheme()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tm', '<CMD>lua require(\'telescope.builtin\').man_pages()<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tw', '<CMD>lua require(\'telescope.builtin\').file_browser({hidden = true})<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>tp', ':Telescope project<CR>', opts)

vim.api.nvim_set_keymap(normal, '<LEADER>gcc', ':!gcc -Wall % && ./a.out<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>cl', ':!sbcl --script %<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>gs', ':!gsi-script %<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>ua', ':!luajit %<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>rr', ':!cargo run -q<CR>', opts)

vim.api.nvim_set_keymap(normal, '<LEADER>rb', '<C-^>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>on', ':NvimTreeOpen<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>p', '"+p<CR>', opts)

vim.api.nvim_set_keymap(normal, '<up>', '<nul>', opts)
vim.api.nvim_set_keymap(normal, '<down>', '<nul>', opts)
vim.api.nvim_set_keymap(normal, '<left>', '<nul>', opts)
vim.api.nvim_set_keymap(normal, '<right>', '<nul>', opts)

vim.api.nvim_set_keymap(insert, '<up>', '<nul>', opts)
vim.api.nvim_set_keymap(insert, '<down>', '<nul>', opts)
vim.api.nvim_set_keymap(insert, '<left>', '<nul>', opts)
vim.api.nvim_set_keymap(insert, '<right>', '<nul>', opts)

vim.api.nvim_set_keymap(normal, '<LEADER>j', ':wincmd j<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>k', ':wincmd k<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>h', ':wincmd h<CR>', opts)
vim.api.nvim_set_keymap(normal, '<LEADER>l', ':wincmd l<CR>', opts)
