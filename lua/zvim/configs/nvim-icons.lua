dofile(vim.g.base46_cache .. "devicons")

local options = {
  override = require "nvchad.icons.devicons",
  color_icons = true,
  override_by_filename = {
    ["docker-compose.dev.yml"] = {
      icon = "󰡨",
      color = "#458ee6",
      cterm_color = "68",
      name = "Dockerfile",
    },
    ["docker-compose.prod.yml"] = {
      icon = "󰡨",
      color = "#458ee6",
      cterm_color = "68",
      name = "Dockerfile",
    },
    ["docker-compose.dev.yaml"] = {
      icon = "󰡨",
      color = "#458ee6",
      cterm_color = "68",
      name = "Dockerfile",
    },
    ["docker-compose.prod.yaml"] = {
      icon = "󰡨",
      color = "#458ee6",
      cterm_color = "68",
      name = "Dockerfile",
    },
  },
}

return options
