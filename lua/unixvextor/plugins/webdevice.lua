return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override_by_filename = {
        ["ts"] = {
          icon = "",
          color = "#519aba",
          cterm_color = "74",
          name = "Ts",
        },
        ["js"] = {
          icon = "",
          color = "#cbcb41",
          cterm_color = "185",
          name = "Js",
        },
        ["package.json"] = {
          icon = "󰎙",
          color = "#32CD32",
          cterm_color = "197",
          name = "PackageJson",
        },
        ["package-lock.json"] = {
          icon = "󰎙",
          color = "#32CD32",
          cterm_color = "52",
          name = "PackageLockJson",
        },
        ["rmd"] = {
          icon = "",
          color = "#519aba",
          cterm_color = "74",
          name = "Rmd",
        },
      },
    })
  end,
}
