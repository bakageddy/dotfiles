local tree = require 'nvim-tree'
tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  update_cwd = false,
  view = {
    width = 30,
    height = 30,
    side = 'left',
  }
}
