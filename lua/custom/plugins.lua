return {
  {
    "stevearc/conform.nvim",
     opts = function()
      return require "custom.configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
       require("custom.configs.nvim-surround")()
      -- require("nvim-surround").setup({
      --   keymaps = {
      --     visual = "S",
      --   },
      -- })
    end,
  },

  {
    'andymass/vim-matchup',
    init = function()
      -- modify your configuration vars here
      vim.g.matchup_treesitter_stopline = 500

      -- or call the setup function provided as a helper. It defines the
      -- configuration vars for you
      require('match-up').setup({
        treesitter = {
          stopline = 500
        }
      })
    end,
    -- or use the `opts` mechanism built into `lazy.nvim`. It calls
    -- `require('match-up').setup` under the hood
    -- -@type matchup.Config
    opts = {
      treesitter = {
        stopline = 500,
      }
    }
  },

  {
    "mattn/emmet-vim",
    lazy = false,
  },

  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      multi_windows = true,
      keys = "etovxqpdygfblzhckisuran",
      uppercase_labels = true,
    },
    keys = {
      {
        "<leader>fj",
        function()
          require("hop").hint_words()
        end,
        mode = { "n", "x", "o" },
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = { "html", "javascript", "typescript", "astro", "svelte" },
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- "run" is deprecated in lazy.nvim
    config = function()
      require "custom.configs.treesitter"
    end,
  },
}

