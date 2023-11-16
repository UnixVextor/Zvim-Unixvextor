return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      mode = "term",
      focus = true,
      startinsert = false,
      term = {
        position = "bot",
        size = 12,
      },
      better_term = { -- Toggle mode replacement
        clean = false, -- Clean terminal before launch
        number = 10, -- Use nil for dynamic number and set init
        init = nil,
      },

      before_run_filetype = function()
        vim.cmd(":w")
      end,

      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        c = {
          "cd $dir &&",
          "gcc $fileName",
          "-o $fileNameWithoutExt &&",
          "$dir/$fileNameWithoutExt",
        },
        cpp = {
          "cd $dir &&",
          "g++ $fileName",
          "-o $fileNameWithoutExt &&",
          "$dir/$fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
      },
    })
  end,

  vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false }),
  vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false }),
}
