local tree = require 'nvim-tree'

vim.g.nvim_tree_respect_buf_cwd = 1

tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    width = 30,
    height = 30,
    side = 'left',
  }
}
