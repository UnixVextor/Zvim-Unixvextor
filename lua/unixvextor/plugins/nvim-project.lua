return {
  "coffebar/neovim-project",
  keys = {
    { "<leader>p", "<cmd>Telescope neovim-project history<cr>", desc = "History Project" },
    { "<leader>pp", "<cmd>Telescope neovim-project discover<cr>", desc = "Dicovery Project" },
  },
  opts = {
    projects = { -- define project roots
      "~/projects/*",
      "~/p*cts/*", -- glob pattern is supported
      "~/projects/repos/*",
      "~/.config/*",
      "~/work/*",
    },
    last_session_on_startup = false,
    datapath = vim.fn.stdpath("data"), -- ~/.local/share/nvim/
    session_manager_opts = {
      autosave_ignore_dirs = {
        vim.fn.expand("~"), -- don't create a session for $HOME/
        "/tmp",
      },
      autosave_ignore_filetypes = {
        -- All buffers of these file types will be closed before the session is saved
        "ccc-ui",
        "gitcommit",
        "gitrebase",
        "qf",
        "toggleterm",
      },
    },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
}
