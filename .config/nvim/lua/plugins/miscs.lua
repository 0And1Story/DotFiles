return {
  -- Visual Multi 插件，用于多光标选择
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_mouse_mappings = 0

      -- vim.g.VM_maps = {}
      -- vim.g.VM_maps["Find Under"] = "<C-d>"
      -- vim.g.VM_maps["Find Subword Under"] = "<C-d>"
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end,
  },
}
