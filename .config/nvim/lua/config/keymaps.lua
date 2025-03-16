-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Map Caps to Esc
-- map({ "i", "v" }, "<Caps>", "<Esc>")

-- Page Up / Page Down
map("n", "J", "<C-d>", { noremap = true, silent = true })
map("n", "K", "<C-u>", { noremap = true, silent = true })

-- Windows like Ctrl-Z bindings
map("n", "<C-z>", "u")
map("i", "<C-z>", "<Esc>ui")

-- Windows like Ctrl-A bindings
map("n", "<C-a>", "ggVG")

-- VSCode like Alt-Shift-Up/Down bindings
map("n", "<A-S-Down>", "yyp")
map("n", "<A-S-Up>", "yyP")
map("i", "<A-S-Down>", "<Esc>yypi")
map("i", "<A-S-Up>", "<Esc>yyPi")
map("v", "<A-S-Down>", "y`]p")
map("v", "<A-S-Up>", "y`[P")

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
