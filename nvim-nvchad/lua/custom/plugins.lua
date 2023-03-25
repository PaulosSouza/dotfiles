local g = vim.g
local overrides = require "custom.configs.overrides"
local debugers = require "custom.configs.debugs"

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
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "otavioschwanck/cool-substitute.nvim",
    lazy = false,
    opts = overrides.cool_substitute,
    config = function(_, opts)
      require("cool-substitute").setup(opts)
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
    "mfussenegger/nvim-dap",
    -- lazy = false,
    config = function()
      overrides.dap.setup()
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    -- lazy = false,
    config = function()
      overrides.dap_ui.setup()
    end,
  },

  {
    "mxsdev/nvim-dap-vscode-js",
    -- lazy = false,
    opts = debugers.vscode_js,
    config = function()
      local exts = {
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
      }

      for _, language in ipairs(exts) do
        require("dap").configurations[language] = {
          {
            name = "Launch",
            type = "pwa-node",
            request = "launch",
            program = "${file}",
            rootPath = "${workspaceFolder}",
            cwd = "${workspaceFolder}",
            sourceMaps = true,
            skipFiles = { "<node_internals>/**" },
            protocol = "inspector",
            console = "integratedTerminal",
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "launch file",
            program = "${file}",
            cwd = "${workspacefolder}",
          },
          {
            name = "attach to node process",
            type = "pwa-node",
            request = "attach",
            rootpath = "${workspacefolder}",
            processid = require("dap.utils").pick_process,
          },
        }
      end

      require("dap.ext.vscode").load_launchjs(nil, {
        ["pwa-node"] = exts,
        ["node-terminal"] = exts,
      })
    end,
  },
}

return plugins
