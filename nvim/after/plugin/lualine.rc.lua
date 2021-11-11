local lualine = require 'lualine'
local tabline = require 'tabline'

lualine.setup {
  options = {
    theme = 'auto',
    icons_enabled = true,
    component_separators = " ",
    section_separators = " ",
  }
}

tabline.setup {
  enable = true,
  options = {
    modified_icon = '⚈ ',
    show_filename_only = true,
    show_bufnr = true,
    show_devicons = true,
  },
}
