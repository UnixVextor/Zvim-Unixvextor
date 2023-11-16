return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      persist_size = true,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      direction = "horizontal",
      close_on_exit = true,
      auto_scroll = true,
      shell = vim.o.shell,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insety = true,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      ---@diagnostic disable-next-line: unused-local
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
  end,
}
