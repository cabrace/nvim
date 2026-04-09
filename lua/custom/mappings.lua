require "nvchad.mappings"
print("Mappings loaded")

local map = vim.keymap.set

-- -- Select the Python function/class under the cursor
-- local function select_python_function()
--   local row, _ = unpack(vim.api.nvim_win_get_cursor(0)) -- current line
--
--   -- Find the start of the function/class (backwards)
--   for i = row, 1, -1 do
--     local line = vim.api.nvim_buf_get_lines(0, i-1, i, false)[1]
--     if line:match("^%s*(def%s+.+|async%s+def%s+.+|class%s+.+)") then
--       row = i
--       break
--     end
--   end
--
--   -- Get indentation of function start
--   local start_line = vim.api.nvim_buf_get_lines(0, row-1, row, false)[1]
--   local indent = start_line:match("^(%s*)")
--
--   -- Find end of block (next line with <= indent or end of file)
--   local last_line = vim.api.nvim_buf_line_count(0)
--   for i = row, last_line do
--     local line = vim.api.nvim_buf_get_lines(0, i-1, i, false)[1]
--     if line ~= "" and not line:match("^" .. indent) then
--       last_line = i - 1
--       break
--     end
--   end
--
--   -- Select the range
--   vim.api.nvim_win_set_cursor(0, {row, 0})
--   vim.cmd(string.format("normal! V%dG", last_line))
-- end

-- Function to visually select Python function(s) under the cursor
local function select_python_function()
  local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
  local count = vim.v.count1 or 1  -- number of functions to select

  local last_line = row

  for _ = 1, count do
    -- Find start of function/class (search backward from last_line)
    local start_row = last_line
    for i = last_line, 1, -1 do
      local line = vim.api.nvim_buf_get_lines(0, i-1, i, false)[1]
      if line:match("^%s*(def%s+.+|async%s+def%s+.+|class%s+.+)") then
        start_row = i
        break
      end
    end

    -- Get indentation of the function start
    local start_line = vim.api.nvim_buf_get_lines(0, start_row-1, start_row, false)[1]
    local indent = start_line:match("^(%s*)")

    -- Find end of function/class block
    local last_buf_line = vim.api.nvim_buf_line_count(0)
    local end_row = last_buf_line
    for i = start_row+1, last_buf_line do
      local line = vim.api.nvim_buf_get_lines(0, i-1, i, false)[1]
      if line ~= "" and not line:match("^" .. indent) then
        end_row = i - 1
        break
      end
    end

    last_line = end_row + 1  -- set for next iteration
  end

  -- Visual select from start of first function to end of last function
  vim.api.nvim_win_set_cursor(0, {row, 0})
  vim.cmd(string.format("normal! V%dG", last_line-1))
end

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('i', '<C-y>,', 'emmet#expandAbbr()', { noremap = true, silent = true, expr = true })
map("n", "<leader>tt", ":lua require('base46').toggle_transparency()<CR>", { noremap = true, silent = true, desc = "Toggle Background Transparency" })
map("n", ",", ":bp<CR>", {desc =" Buffer Previous"})
map("n", ",", ":bn<CR>", {desc =" Buffer Next"})
map("n", "<leadedr>ww", ":w<CR>", { desc ="Write Save"} )
-- map("n", "<leader>aa", "v]m", { desc = "Select entire function" })
-- map("n", "<leader>aa", "<SNR>31_Python_jump('x', '\\%v$|^\\s*(class|def|async def>', 'W', v:count1)<CR>k", { desc = "Select entire function" })
map("n", "<leader>aa", select_python_function, { desc = "Select entire Python function", noremap = true, silent = true })

-- Move selected lines up/down with Alt + ↑/↓
vim.keymap.set("x", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
vim.keymap.set("x", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })



