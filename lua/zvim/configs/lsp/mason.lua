dofile(vim.g.base46_cache .. "mason")

local options = {
  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "emmet_ls",
    "prismals",
    "pyright",
    "clangd",
    "gopls",
  },

  -- auto-isntall configured server (with lspconfig)
  automatic_installation = true,

  max_concurrent_installers = 10,
}

return options
