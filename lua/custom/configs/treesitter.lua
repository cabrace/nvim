local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = {
    "html",
    "javascript",
    "typescript",
    "css",
    "scss",
    "astro",
    "svelte",
    -- add any other languages you use
  },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true },
  matchup = { enable = true }, -- For vim-matchup integration
}
