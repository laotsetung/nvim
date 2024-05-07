return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "quick_lint_js", "pyright"},
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         require "custom.configs.lspconfig"
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({})
         lspconfig.quick_lint_js.setup({})
         --python
         local config = require("plugins.configs.lspconfig")
         local on_attach = config.on_attach
         local capabilities = config.capabilities
         lspconfig.pyright.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            filetypes = {"python"},
         })
         -- lspconfig.hls.setup({})
         -- lspconfig.bashls.setup({})
      end,
   },
}
