return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            -- Change "show document information" keymap from K to <F4>
            { "K", false },
            { "<F4>", vim.lsp.buf.hover },
          },
        },
      },
    },
  },
}
