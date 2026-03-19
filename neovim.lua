return {
  {
    dir = vim.fn.expand("~/.config/omarchy/current/theme"),
    name = "dune",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      italic_comments = true,
      dim_inactive = false,
      terminal_colors = true,
      overrides = {},
    },
    config = function(_, opts)
      require("dune").setup(opts)
      vim.cmd.colorscheme("dune")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dune",
    },
  },
}
