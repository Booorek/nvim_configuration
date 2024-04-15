return {
--Mason--
  {  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
--MasonLsp--
  {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      --LANGUAGES--
      ensure_installed = {"lua_ls","clangd"}
      })
  end
  },
--SETUP_FOR_LANGUAGES--
  {
    "neovim/nvim-lspconfig",
    config=function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})


      vim.keymap.set('n','K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }
}
