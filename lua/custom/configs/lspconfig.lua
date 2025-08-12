local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Make sure to call this to load the default settings properly
require("nvchad.configs.lspconfig").defaults()

-- List of servers with default config
local servers = { "html", "cssls", "astro", "svelte", "emmet_language_server", "ts_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- If you want to customize a specific server further, example for emmet:
lspconfig.emmet_language_server.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,

  filetypes = {
    "astro",
    "svelte",
    "css",
    "eruby",
    "html",
    "javascript",
    "typescript",
    "less",
    "sass",
    "scss",
    "pug",
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
}

