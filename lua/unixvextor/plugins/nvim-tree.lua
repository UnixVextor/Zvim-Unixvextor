return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",

  },

  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "name",
        folders_first = true,
        files_first = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      hijack_cursor = true,
    
      renderer = {
        indent_width = 2,
        icons = {
          padding = "  ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true
          },
          glyphs = {
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = " ",
              arrow_closed = " ",    
            },
            git = {
              unstaged = "",
		          staged = "S",
		          unmerged = "",
		          renamed = "➜",
		          deleted = "",
		          untracked = "U",
		          ignored = "◌",
            }
          }
        }
        
      }
    }) 
  end,
}

