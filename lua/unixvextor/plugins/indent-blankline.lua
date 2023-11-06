return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local indentline = require("ibl")
    indentline.setup({
      enabled = true,
      exclude = {
        filetypes = {
          "help",
          "dashboard",
          "lazy",
          "NvimTree",
          "Trouble",
          "text",
        },
      },
    })
  end,
}
