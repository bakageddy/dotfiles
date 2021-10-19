require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  autopairs = {
    enable = true,
  },
}
local npairs = require("nvim-autopairs")
npairs.setup({
  check_ts = true,
})
