local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
local autopairs = require 'nvim-autopairs'
local cmp = require 'cmp'

cmp.event:on( 'confirm_done',
            cmp_autopairs.on_confirm_done({
              map_char = {
                tex = ''
              }
            }))

autopairs.setup({
  enable_check_bracket_line = false,
  check_ts = true,
})
