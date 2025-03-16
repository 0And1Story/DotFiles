if false then
  return {}
end

return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      latex = {
        enabled = false,
        render_modes = false,
        converter = "latex2text",
        highlight = "RenderMarkdownMath",
        position = "above",
        top_pad = 0,
        bottom_pad = 0,
      },
      render_modes = true,
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    init = function()
      -- vim.OpenMarkdownPreview = function(url)
      --   vim.cmd("silent ! google-chrome-stable --new-window " .. url)
      -- end

      vim.api.nvim_exec2(
        [[
      function OpenMarkdownPreview (url)
        execute "silent ! google-chrome-stable --new-window " . a:url
      endfunction
      ]],
        {}
      )
      vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
    end,
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = { "latex" },
  --   },
  -- },
  -- {
  --   "preservim/vim-markdown",
  --   init = function()
  --     vim.g.vim_markdown_folding_disabled = 1
  --     vim.g.vim_markdown_no_default_key_mappings = 1
  --     vim.g.conceallevel = 2
  --     vim.g.vim_markdown_conceal = 1
  --     vim.g.vim_markdown_math = 1
  --     vim.g.tex_conceal = 1
  --   end,
  -- },
  -- {
  --   "jbyuki/nabla.nvim",
  -- },
}
