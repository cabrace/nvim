**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`

# Credits
1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!

# My NvChad Setup
.                               # Root directory of your Neovim config
├── **init.lua**                    # Main Neovim entrypoint; loads NvChad core
├── lazy-lock.json              # Lockfile pinning plugin versions for Lazy.nvim
├── LICENSE                     # License file for your config distribution
├── **lua**                         # Core Lua configuration folder
│   ├── autocmds.lua            # Autocommands for various editor events
│   ├── chadrc.lua              # NvChad main configuration overrides
│   ├── **configs**                 # Default NvChad plugin configs
│   │   ├── conform.lua         # Config for Conform formatting plugin
│   │   ├── lazy.lua            # Config for Lazy.nvim plugin manager
│   │   └── lspconfig.lua       # Config for Neovim LSP setup
│   ├── **custom**                  # Your personal custom NvChad overrides
│   │   ├── chadrc.lua          # Your own NvChad config overrides
│   │   ├── configs             # Your custom plugin configuration files
│   │   │   ├── conform.lua     # Your Conform formatter config
│   │   │   ├── lspconfig.lua   # Your LSP setup overrides
│   │   │   ├── lualine.lua     # Your Lualine statusline config
│   │   │   ├── nvim-surround.lua # Config for nvim-surround plugin
│   │   │   ├── statusline.lua  # Custom statusline appearance/config
│   │   │   └── treesitter.lua  # Treesitter parser and highlight config
│   │   ├── **init.lua**            # Custom init file for loading overrides
│   │   ├── mappings.lua        # Your custom key mappings
│   │   ├── options.lua         # Your custom Neovim options
│   │   └── plugins.lua         # Your list of custom plugins
│   ├── ftdetect                # Filetype detection scripts
│   │   ├── astro.vim           # Detects `.astro` files as Astro filetype
│   │   └── svelte.vim          # Detects `.svelte` files as Svelte filetype
│   ├── mappings.lua            # Default NvChad key mappings
│   ├── options.lua             # Default NvChad options
│   ├── plugins                 # Folder for plugin initialization
│   │   └── init.lua            # Default plugin list for NvChad
│   └── queries                 # Treesitter query overrides
│       └── html
│           └── matchup.scm     # Treesitter query for HTML tag matching
└── README.md                   # Documentation or notes for your config
