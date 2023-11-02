return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")
    
    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason
    mason.setup()

    mason_lspconfig.setup({
       -- list of server
       ensure_installed = {
         "tsserver",
         "html",
         "cssls",
         "tailwindcss",
         "lua_ls",
         "emmet_ls",
         "prismals",
         "pyright",
       },

       -- auto-isntall configured server (with lspconfig)
       automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_install = {
        "prettier", -- prettier formatter
        "stylua",   -- lua formatter
        "isort",    -- python formatter
        "black",    -- python formatter
        "pylint",   -- python linter
        "eslint_d", -- js linter
      }
    })
  end,
}
