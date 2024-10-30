dofile(vim.g.base46_cache .. "mason")
local M = {}

M.options = {
  PATH = "prepend",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ",
    },
  },

  max_concurrent_installers = 10,
}

M.mason_lspconfigs = {
  ensure_installed = {
    "ts_ls",
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
  automatic_installation = true,
}

M.opts_formatter = {
  ensure_installed = {
    "prettier",
    "stylua", -- lua formatter
    "isort",  -- python formatter
    "black",  -- python formatter
    "pylint",
    "eslint_d",
  },
  automatic_installation = true,
}

return M
