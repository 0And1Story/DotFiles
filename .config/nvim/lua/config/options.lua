-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = false
opt.tabstop = 2
opt.relativenumber = false

opt.fileencodings = "ucs-bom,utf-8,gbk,big5,gb18030,utf-16,latin1"

-- if vim.fn.has("nvim-0.10") == 1 then
--   opt.smoothscroll = false
-- end
-- opt.smoothscroll = false

-- global 默认就设成 context
vim.g.SuperTabDefaultCompletionType = "context"

-- 给 tex 文件类型也用 context
vim.g.SuperTabFileTypeMappings = vim.g.SuperTabFileTypeMappings or {}
vim.g.SuperTabFileTypeMappings["tex"] = "context"
