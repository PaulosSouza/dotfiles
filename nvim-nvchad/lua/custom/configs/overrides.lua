local M = {}

local icons = require "custom.icons"

M.treesitter = {
  ensure_installed = {
    "c",
    "javascript",
    "json",
    "json5",
    "lua",
    "vim",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "yaml",
    "graphql",
    "bash",
    "prisma",
    "go",
    "gomod",
    "gosum",
    "dot",
    "gitignore",
    "markdown",
    "regex",
    "sql",
    "dockerfile",
    "bash",
    "scss",
    "http",
    "vue",
    "glimmer",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "css",
      "lua",
      "xml",
      "markdown",
    },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "eslint_d",
    "prettierd",
    "editorconfig-checker",
    "dot-language-server",
    "stylelint-lsp",
    "json-lsp",
    "js-debug-adapter",
    "fixjson",
    "jsonlint",
    "dockerfile-language-server",
    "gopls",
    "gofumpt",
    "goimports-reviser",
    "emmet-ls",
    "glint",
    "tailwindcss-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.neoscroll = {
  mappedKeys = {
    ["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } },
    ["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "250" } },
    ["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "450" } },
    ["<C-m>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "450" } },
    ["<C-y>"] = { "scroll", { "-0.10", "false", "100" } },
    ["<C-e>"] = { "scroll", { "0.10", "false", "100" } },
    ["zt"] = { "zt", { "250" } },
    ["zz"] = { "zz", { "250" } },
    ["zb"] = { "zb", { "250" } },
  },

  config = {
    hide_cursor = true,
    stop_eof = true,
    use_local_scrolloff = false,
    respect_scrolloff = false,
    cursor_scrolls_alone = true,
    easing_function = nil,
    pre_hook = nil,
    post_hook = nil,
  },
}

M.dap = {
  config = {
    breakpoint = {
      text = icons.ui.Bug,
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    },
    breakpoint_rejected = {
      text = icons.ui.Bug,
      texthl = "DiagnosticSignError",
      linehl = "",
      numhl = "",
    },
    stopped = {
      text = icons.ui.BoldArrowRight,
      texthl = "DiagnosticSignWarn",
      linehl = "Visual",
      numhl = "DiagnosticSignWarn",
    },
    log = {
      level = "info",
    },
  },

  setup = function()
    local dap = require "dap"

    vim.fn.sign_define("DapBreakpoint", M.dap.config.breakpoint)
    vim.fn.sign_define("DapBreakpointRejected", M.dap.config.breakpoint_rejected)
    vim.fn.sign_define("DapStopped", M.dap.config.stopped)

    dap.set_log_level(M.dap.config.log.level)
  end,
}

M.dap_ui = {
  config = {
    icons = { expanded = "", collapsed = "", circular = "" },
    mappings = {
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      edit = "e",
      repl = "r",
      toggle = "t",
    },
    element_mappings = {},
    expand_lines = true,
    layouts = {
      {
        elements = {
          { id = "scopes", size = 0.33 },
          { id = "breakpoints", size = 0.17 },
          { id = "stacks", size = 0.25 },
          { id = "watches", size = 0.25 },
        },
        size = 0.33,
        position = "right",
      },
      {
        elements = {
          { id = "repl", size = 0.45 },
          { id = "console", size = 0.55 },
        },
        size = 0.27,
        position = "bottom",
      },
    },
    controls = {
      enabled = true,
      element = "repl",
      icons = {
        pause = "",
        play = "",
        step_into = "",
        step_over = "",
        step_out = "",
        step_back = "",
        run_last = "",
        terminate = "",
      },
    },
    floating = {
      max_height = 0.9,
      max_width = 0.5,
      border = vim.g.border_chars,
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
    windows = { indent = 1 },
    render = {
      max_type_length = nil,
      max_value_lines = 100,
    },
  },

  setup = function()
    local dapui = require "dapui"
    local dap_status_ok, dap = pcall(require, "dap")

    if not dap_status_ok then
      return
    end

    dapui.setup(M.dap_ui.config)

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
  end,
}

M.alpha = {
  config = function()
    local dashboard = require "alpha.themes.dashboard"

    dashboard.section.header.opts.hl = "String"
    dashboard.section.header.val = {
      "        ▄▄▄▄▄███████████████████▄▄▄▄▄      ",
      "      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄    ",
      "     █▀████████▄             ▀▀████ ▀██▄   ",
      "    █▄▄██████████████████▄▄▄         ▄██▀  ",
      "     ▀█████████████████████████▄    ▄██▀   ",
      "       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀     ",
      "         ▀███▄              ▀██████▀       ",
      "           ▀██████▄        ▄████▀          ",
      "              ▀█████▄▄▄▄▄▄▄███▀            ",
      "                ▀████▀▀▀████▀              ",
      "                  ▀███▄███▀                ",
      "                     ▀█▀                   ",
      "",
      "                [@paulosouza]              ",
      "",
      "",
    }

    dashboard.section.buttons.opts.hl = "Number"
    dashboard.section.buttons.val = {
      dashboard.button("SPC f o", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>"),
      dashboard.button("SPC f f", "  Find File", "<CMD>Telescope find_files<CR>"),
      dashboard.button("SPC f w", "󰱼  Find Word", "<CMD>Telescope live_grep<CR>"),
      dashboard.button("SPC f g", "󰊢  Git Status", "<CMD>Telescope git_status<CR>"),
    }

    dashboard.section.footer.val = "  +   +   ..."
    dashboard.section.footer.opts.hl = "Linenr"

    return dashboard.opts
  end,
}

M.nvterm = {
  terminals = {
    shell = "/bin/zsh",
  },
}

M.auto_save = {
  execution_message = {
    message = function()
      return ""
    end,
  },
}

return M
