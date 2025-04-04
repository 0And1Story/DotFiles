return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      -- bigfile = { enabled = true },
      -- dashboard = { enabled = true },
      -- indent = { enabled = true },
      -- input = { enabled = true },
      -- picker = { enabled = true },
      -- notifier = { enabled = true },
      -- quickfile = { enabled = true },
      scroll = { enabled = false },
      -- statuscolumn = { enabled = true },
      -- words = { enabled = true },
      image = {
        enabled = true,
        math = {
          enabled = false,
          -- latex = {
          --   font_size = "normalsize",
          -- },
        },
      },
    },
  },
}
