return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Change "show document information" keymap from K to <F4>
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "<F4>", vim.lsp.buf.hover }
    end,
  },
}
