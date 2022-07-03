local tree = require 'nvim-tree'

vim.g.respect_buf_cwd = 1

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
    width = 25,
    height = 30,
    side = 'left',
  }
}
