local g = vim.g
local overrides = require "custom.configs.overrides"
local utils = require "core.utils"

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    opts = overrides.treesitter,
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup(overrides.neoscroll.config)
      require("neoscroll.config").set_mappings(overrides.neoscroll.mappedKeys)
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    config = function()
      g.lazygit_floating_window_winblend = 1
      g.lazygit_floating_window_scaling_factor = 1
    end,
  },

  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      utils.load_mappings "trouble"
    end,
  },

  {
    "goolord/alpha-nvim",
    lazy = false,
    config = function()
      local dash_config = overrides.alpha.config()

      require("alpha").setup(dash_config)
    end,
  },

  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    dependencies = {
      "kevinhwang91/promise-async",
    },
    config = function(_, opts)
      require("ufo").setup(opts)
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    event = "VeryLazy",
    opts = overrides.auto_save,
    config = function(_, opts)
      require("auto-save").setup(opts)
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      require("symbols-outline").setup(opts)
    end,
  },

  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = {
      "tpope/vim-repeat",
    },
    config = function(_, opts)
      vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
      vim.api.nvim_set_hl(0, "LeapMatch", {
        fg = "white",
        bold = true,
        nocombine = true,
      })
      vim.api.nvim_set_hl(0, "LeapLabelPrimary", {
        bg = "#f00077",
        fg = "#ffffff",
        bold = false,
        nocombine = true,
      })
      vim.api.nvim_set_hl(0, "LeapLabelSecondary", {
        fg = "blue",
        bold = true,
        nocombine = true,
      })

      require("leap").opts.highlight_unlabeled_phase_one_targets = true
      return require("leap").add_default_mappings(opts)
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && yarn install",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    event = "VeryLazy",
  },

  {
    "Pocco81/true-zen.nvim",
    event = "VeryLazy",
    config = function()
      require("true-zen").setup()
      utils.load_mappings "true_zen"
    end,
  },

  {
    "akinsho/git-conflict.nvim",
    event = "VeryLazy",
    version = "*",
    config = function()
      require("git-conflict").setup {}
    end,
  },
}

return plugins
