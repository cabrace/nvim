-- lua/custom/init.lua

-- Load your custom plugins
require("custom.plugins")

-- Load custom configs (LSP, treesitter, etc)
require("custom.configs.lspconfig")
require("custom.configs.treesitter")
require("custom.configs.conform")
require("custom.configs.statusline")

-- Load other custom config files as needed
require("custom.configs.statusline")
require("custom.configs.mappings")
-- require("custom.mappings")  -- if you have custom mappings here

