require "nvchad.mappings"
print("Mappings loaded")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('i', '<C-y>,', 'emmet#expandAbbr()', { noremap = true, silent = true, expr = true })
map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle Background Transparency" })
map("n", ",", ":bp<CR>", {desc =" Buffer Previous"})
map("n", ",", ":bn<CR>", {desc =" Buffer Next"})
map("n", "<leadedr>ww", ":w<CR>", { desc ="Write Save"} )

-- Move selected lines up/down with Alt + ↑/↓
vim.keymap.set("x", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
vim.keymap.set("x", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })



