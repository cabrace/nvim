return function()
  require("nvim-surround").setup({
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
