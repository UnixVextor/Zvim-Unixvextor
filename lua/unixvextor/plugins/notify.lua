return {
  "rcarriga/nvim-notify",
  lazy = false,
  config = function()
    vim.cmd("highlight NotifyERRORBorder guifg=#8A1F1F")
    vim.cmd("highlight NotifyERRORBorder guifg=#8A1F1F")
    vim.cmd("highlight NotifyINFOBorder guifg=#4F6752")
    vim.cmd("highlight NotifyDEBUGBorder guifg=#8B8B8B")
    vim.cmd("highlight NotifyTRACEBorder guifg=#4F3552")
    vim.cmd("highlight NotifyERRORIcon guifg=#F70067")
    vim.cmd("highlight NotifyWARNIcon guifg=#F79000")
    vim.cmd("highlight NotifyINFOIcon guifg=#A9FF68")
    vim.cmd("highlight NotifyDEBUGIcon guifg=#8B8B8B")
    vim.cmd("highlight NotifyTRACEIcon guifg=#D484FF")
    vim.cmd("highlight NotifyERRORTitle  guifg=#F70067")
    vim.cmd("highlight NotifyWARNTitle guifg=#F79000")
    vim.cmd("highlight NotifyINFOTitle guifg=#A9FF68")
    vim.cmd("highlight NotifyDEBUGTitle  guifg=#8B8B8B")
    vim.cmd("highlight NotifyTRACETitle  guifg=#D484FF")
    vim.cmd("highlight NotifyDEBUGTitle  guifg=#8B8B8B")
    vim.cmd("highlight link NotifyERRORBody Normal")
    vim.cmd("highlight link NotifyWARNBody Normal")
    vim.cmd("highlight link NotifyINFOBody Normal")
    vim.cmd("highlight link NotifyDEBUGBody Normal")
    vim.cmd("highlight link NotifyTRACEBody Normal")

    require("notify").setup({
      background_colour = "NotifyBackground",
      fps = 30,
      icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "✎",
        WARN = "",
      },
      level = 2,
      minimum_width = 50,
      render = "default",
      stages = "fade_in_slide_out",
      timeout = 3000,
      top_down = true,
    })

    local log = require("plenary.log").new({
      plugin = "notify",
      level = "debug",
      use_console = false,
    })

    vim.notify = function(msg, level, opts)
      log.info(msg, level, opts)
      require("notify")(msg, level, opts)
    end
    vim.notify("welcome to the neovim", "info")
    require("telescope").load_extension("notify")
  end,
}
