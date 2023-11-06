return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tab",
        separator_style = "slant",
        buffer_close_icon = "󰅖",
        color_icons = true,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        diagnostics = "nvim_lsp",
        ---@diagnostic disable-next-line: unused-local
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
        left_trunc_marker = "",
        right_trunc_marker = "",
      },
    })
  end,
}
