local nvim_lsp = require 'lspconfig'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'
local servers = {'clangd', 'pylsp', 'rust_analyzer', 'gopls', 'hls'}
local cmp = require 'cmp'
local cmpLsp = require('cmp_nvim_lsp')
local sumneko_root_path = ""
local sumneko_binary = ""
local util = require 'lspconfig/util'
lspkind.init()


local cfg = {
  hint_prefix = " "
}

USER = vim.fn.expand('$USER')

if vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
    sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"
else
    print("Not viable system")
end

local on_attach = function (client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
  vim.keymap.set("n", "<leader>ff", vim.lsp.buf.formatting, {buffer=0})
  vim.keymap.set("n", "[e", vim.diagnostic.goto_next, {buffer=0})
  vim.keymap.set("n", "]e", vim.diagnostic.goto_prev, {buffer=0})
  vim.keymap.set("n", "<LEADER>rn", vim.lsp.buf.rename, {buffer=0})
  vim.keymap.set("n", "<LEADER>ca", vim.lsp.buf.code_action, {buffer=0})
end

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        require('lsp_signature').on_attach(cfg),
        capabilities = cmpLsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    }
end

local has_words_before = function ()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

nvim_lsp.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        globals = {'vim'}
      },
      workspace = {
        library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
      }
  }
},
  on_attach = on_attach,
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

nvim_lsp.gopls.setup {
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    }
  },
  on_attach = on_attach,

}

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-y>'] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false}),
        ['<C-j>'] = cmp.mapping(function (fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, {"i", "s"}),
        ['<C-k>'] = cmp.mapping(function (fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, {"i", "s"})
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[BUF]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[API]",
                path = "[PATH]",
                luasnip = "[SNIP]",
                latex_symbols = "[LATEX]",
            }
        }
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
        {name = 'nvim_lua'},
        {name = 'path'},
        {name = 'buffer'},
    },
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
      prefix = '  ',
  }
})
