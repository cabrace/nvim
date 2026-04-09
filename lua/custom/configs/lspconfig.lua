-- local lspconfig = require "lspconfig"
-- local nvlsp = require "nvchad.configs.lspconfig"

-- Make sure to call this to load the default settings properly
require("nvchad.configs.lspconfig").defaults()

-- List of servers with default config
-- local servers = { "html", "cssls", "astro", "svelte", "emmet_language_server", "ts_ls", "marksman" }
-- vim.lsp.enable(servers)

-- Customize emmet BEFORE enabling
vim.lsp.config("emmet_language_server", {
  filetypes = {
    "astro", "svelte", "css", "eruby", "html",
    "javascript", "typescript", "less", "sass",
    "scss", "pug",
  },
  init_options = {
    includeLanguages = {},
    excludeLanguages = {},
    extensionsPath = {},
    preferences = {},
    showAbbreviationSuggestions = true,
    showExpandedAbbreviation = "always",
    showSuggestionsAsSnippets = false,
    syntaxProfiles = {},
    variables = {},
  },
})

-- Enable all servers
local servers = {
  "html", "cssls", "astro", "svelte",
  "emmet_language_server", "ts_ls", "marksman"
}

vim.lsp.enable(servers)

