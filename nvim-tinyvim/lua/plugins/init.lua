local plugins = {
  { lazy = true, "nvim-lua/plenary.nvim" },

  -- file tree
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    config = function()
      require "plugins.configs.nvimtree"
    end,
  },

  -- git status on signcolumn etc
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- icons, for UI related plugins
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end,
  },

  -- syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "windwp/nvim-ts-autotag" },
    },
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

  -- buffer and tabs
  {
    "akinsho/bufferline.nvim",
    event = "BufReadPre",
    config = function()
      require "plugins.configs.bufferline"
    end,
  },

  -- we use cmp plugin only when in insert mode
  -- so lets lazyload it at InsertEnter event, to know all the events check h-events
  -- completion , now all of these plugins are dependent on cmp, we load them after cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- cmp sources
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lua",
      "onsails/lspkind.nvim",

      -- snippets
      --list of default snippets
      "rafamadriz/friendly-snippets",

      -- snippets engine
      {
        "L3MON4D3/LuaSnip",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },

      -- autopairs , autocompletes ()[] etc
      {
        "windwp/nvim-autopairs",
        config = function()
          require("nvim-autopairs").setup()

          --  cmp integration
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          local cmp = require "cmp"
          cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },
    },
    config = function()
      require "plugins.configs.cmp"
    end,
  },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = { "Mason", "MasonInstall" },
    config = function()
      require("mason").setup()
    end,
  },

  -- lsp
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },

  -- formatting , linting
  {
    "stevearc/conform.nvim",
    lazy = true,
    config = function()
      require "plugins.configs.conform"
    end,
  },

  -- indent lines
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("ibl").setup()
    end,
  },

  -- files finder etc
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    config = function()
      require "plugins.configs.telescope"
    end,
  },

  -- comment plugin
  {
    "numToStr/Comment.nvim",
    lazy = true,
    config = function()
      require("Comment").setup()
    end,
  },

  -- one nord theme
  {
    "rmehri01/onenord.nvim",
    opts = {
      disable = {
        background = false,
      },
    },
  },

  -- neoscroll
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require "plugins.configs.neoscroll"
    end,
  },

  -- trouble
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "linrongbin16/lsp-progress.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.configs.lsp-progress"
    end,
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "linrongbin16/lsp-progress.nvim",
    },
    config = function()
      require "plugins.configs.lualine"
    end,
  },

  -- lsp saga
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {
        lightbulb = {
          enable = false,
        },
        symbol_in_winbar = {
          enable = false,
        },
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- whichkey
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      popup_mappings = {
        scroll_down = "<c-d>",
        scroll_up = "<c-u>",
      },

      window = {
        border = "none",
      },

      layout = {
        spacing = 6,
      },

      hidden = {
        "<silent>",
        "<cmd>",
        "<Cmd>",
        "<CR>",
        "call",
        "lua",
        "^:",
        "^ ",
      },

      triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
      },
    },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      require "plugins.configs.whichkey"
    end,
  },

  -- leap
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function()
      require "plugins.configs.leap"
    end,
  },

  -- JABS(switch buffer)
  {
    "matbme/JABS.nvim",
    config = function()
      require("jabs").setup {
        use_devicons = true,
      }
    end,
  },

  -- auto save
  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    opts = {
      execution_message = {
        message = function()
          return ""
        end,
      },
      debounce_delay = 500,
    },
    config = function(_, opts)
      require("auto-save").setup(opts)
    end,
  },

  -- alpha
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "plugins.configs.alpha"
    end,
  },

  -- search and replace words
  {
    "AckslD/muren.nvim",
    config = true,
  },
}

require("lazy").setup(plugins, require "plugins.configs.lazy")
