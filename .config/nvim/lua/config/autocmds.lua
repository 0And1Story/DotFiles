-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    local opt = vim.opt
    local map = vim.api.nvim_buf_set_keymap

    opt.wrap = true

    -- 斜体（<C-i>）：用 \textit{} 包围选中内容
    map(0, "v", "<C-i>", 'c\\textit{<C-r>"}<Esc>h', { noremap = true, silent = true })
    map(0, "n", "<C-i>", 'viwc\\textit{<C-r>"}<Esc>h', { noremap = true, silent = true })
    map(0, "i", "<C-i>", "\\textit{}<Esc>i", { noremap = true, silent = true })
    -- 粗体（<C-b>）：用 \textbf{} 包围选中内容
    map(0, "v", "<C-b>", 'c\\textbf{<C-r>"}<Esc>h', { noremap = true, silent = true })
    map(0, "n", "<C-b>", 'viwc\\textbf{<C-r>"}<Esc>h', { noremap = true, silent = true })
    map(0, "i", "<C-b>", "\\textbf{}<Esc>i", { noremap = true, silent = true })

    -- Fraction
    map(0, "n", "<C-f>", "tsf", { noremap = false, silent = true })
    map(0, "i", "<C-f>", "<Esc>tsfi", { noremap = false, silent = true })
    -- Bracket
    map(0, "n", "<C-9>", "tsd", { noremap = false, silent = true })
    map(0, "i", "<C-9>", "<Esc>tsdi", { noremap = false, silent = true })
    map(0, "n", "<C-0>", "tsd", { noremap = false, silent = true })
    map(0, "i", "<C-0>", "<Esc>tsdi", { noremap = false, silent = true })
    -- Rename Environment
    map(0, "n", "<F2>", "cse", { noremap = false, silent = true })
    map(0, "i", "<F2>", "<Esc>cse", { noremap = false, silent = true })

    -- Pairs
    map(0, "v", "gp", 'c{<C-r>"}<Esc>`<', { noremap = false, silent = true })
    -- Boxed
    map(0, "v", "gb", 'c\\boxed{<C-r>"}<Esc>', { noremap = false, silent = true })
    -- Text
    map(0, "v", "gt", 'c\\text{<C-r>"}<Esc>', { noremap = false, silent = true })
    -- Verb
    map(0, "v", "gv", 'c\\verb|<C-r>"|<Esc>', { noremap = false, silent = true })
    -- Inline Math
    map(0, "v", "g$", 'c$<C-r>"$<Esc>', { noremap = false, silent = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    local opt = vim.opt
    local map = vim.api.nvim_buf_set_keymap

    opt.wrap = true

    map(0, "n", "<localleader>p", "<cmd>MarkdownPreviewToggle<cr>", { noremap = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cpp", "c" },
  callback = function()
    local opt = vim.opt
    local map = vim.api.nvim_buf_set_keymap

    opt.tabstop = 4
    opt.shiftwidth = 4
  end,
})
