print("Loaded custom options.lua")

-- add yours here!

local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

-- custom options.lua
-- Configure Vim/Neovim editor settings (like UI, indentation, behavior)

local opt = vim.opt  -- shorthand

-- Line numbers
opt.number = true
opt.relativenumber = false

-- Tabs and indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
opt.tabstop = 4         -- number of spaces tabs count for
opt.shiftwidth = 4      -- size of an indent
opt.expandtab = true    -- use spaces instead of tabs

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.cursorline = true
opt.termguicolors = true
opt.wrap = false

-- Clipboard
opt.clipboard = "unnamedplus"  -- use system clipboard

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Other
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Save options to vim.opt global
