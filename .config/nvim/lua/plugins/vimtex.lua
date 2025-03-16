return {
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_latexmk = {
        options = {
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
        },
      }
      vim.g.vimtex_quickfix_ignore_filters = { "Overfull", "Underfull", "Font" }
    end,
  },
}
