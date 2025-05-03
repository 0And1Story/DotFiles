-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Map Caps to Esc
-- map({ "i", "v" }, "<Caps>", "<Esc>")

-- Change "show document information" keymap
-- map("n", "<F4>", vim.lsp.buf.hover)

-- Page Up / Page Down
map("n", "J", "<C-d>", { noremap = true, silent = true })
map("n", "K", "<C-u>", { noremap = true, silent = true })

-- Home / End
map({ "n", "v" }, "1", "0", { noremap = true, silent = true })
map({ "n", "v" }, "0", "$", { noremap = true, silent = true })

-- Windows like Ctrl-Z bindings
map("n", "<C-z>", "u")
map("i", "<C-z>", "<Esc>ui")

-- Windows like Ctrl-A bindings
map("n", "<C-a>", "ggVG")

-- VSCode like Alt-Shift-Up/Down bindings
-- map("n", "<A-S-j>", "yyp")
-- map("n", "<A-S-k>", "yyP")
-- map("i", "<A-S-j>", "<Esc>yypi")
-- map("i", "<A-S-k>", "<Esc>yyPi")
-- map("v", "<A-S-j>", "y`]p")
-- map("v", "<A-S-k>", "y`[P")

map("n", "<A-S-j>", "<cmd>t.<cr>")
map("n", "<A-S-k>", "<cmd>t-1<cr>")
map("i", "<A-S-j>", "<Esc><cmd>t.<cr>i")
map("i", "<A-S-k>", "<Esc><cmd>t-1<cr>i")
map("v", "<A-S-j>", "<Esc><cmd>'<,'>t'><cr>'<V'>")
map("v", "<A-S-k>", "<Esc><cmd>'<,'>t'<-1<cr>'<V'>")

vim.keymap.set({ "n", "i", "v" }, "<A-S-Down>", "<A-S-j>", { noremap = false, silent = true, remap = true })
vim.keymap.set({ "n", "i", "v" }, "<A-S-Up>", "<A-S-k>", { noremap = false, silent = true, remap = true })
vim.keymap.set({ "n", "i", "v" }, "<A-Down>", "<A-j>", { noremap = false, silent = true, remap = true })
vim.keymap.set({ "n", "i", "v" }, "<A-Up>", "<A-k>", { noremap = false, silent = true, remap = true })

-- VSCode like Ctrl-D / Ctrl-L bindings
map("n", "<C-d>", "viw")
map("v", "<C-d>", "iw")
map("i", "<C-d>", "<Esc>lviw")

-- map("n", "<C-l>", "<S-v>")
-- map("v", "<C-l>", "j")
-- map("i", "<C-l>", "<Esc><S-v>")

-- Windows like Ctrl-Backspace
map("i", "<C-Backspace>", "<Esc>vbdi")

-- Toggle Comment
vim.keymap.set("n", "<C-/>", "gcc", { noremap = false, silent = true, remap = true })
vim.keymap.set("i", "<C-/>", "<Esc>gcci", { noremap = false, silent = true, remap = true })
vim.keymap.set("v", "<C-/>", "gc`[<S-v>`]", { noremap = false, silent = true, remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { noremap = false, silent = true, remap = true })
vim.keymap.set("i", "<C-_>", "<Esc>gcci", { noremap = false, silent = true, remap = true })
vim.keymap.set("v", "<C-_>", "gc`[<S-v>`]", { noremap = false, silent = true, remap = true })

-- Terminal
map("n", "<C-t>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
map("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Close Buffer
map("n", "<C-w>", function()
  Snacks.bufdelete()
end)
