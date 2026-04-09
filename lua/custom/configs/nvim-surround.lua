return function()
  require("nvim-surround").setup({
    -- This is just an example — tweak as you wish
    keymaps = {
      insert = "<C-g>s",
      insert_line = "<C-g>S",
      normal = "ys",
      normal_cur = "yss",
      normal_line = "yS",
      normal_cur_line = "ySS",
      visual = "S",
      visual_line = "gS",
      delete = "ds",
      change = "cs",
    },
    surrounds = {
      -- Example: add a custom HTML tag surround
      t = {
        add = function()
          local tag = vim.fn.input("Enter tag name: ")
          return { { "<" .. tag .. ">" }, { "</" .. tag .. ">" } }
        end,
      },
    },
  })
end
