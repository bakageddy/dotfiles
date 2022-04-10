require'FTerm'.setup({
  border = 'double',
  dimensions = {
    height = 0.9,
    width = 0.9,
  }
})

vim.keymap.set('n', '<C-\\>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-\\>', '<Esc><CMD>lua require("FTerm").toggle()<CR>')
