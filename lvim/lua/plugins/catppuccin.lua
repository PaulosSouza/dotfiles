require("catppuccin").setup({
  highlight_overrides = {
    mocha = function(mocha)
      return {
        LineNr = { fg = mocha.overlay0 },
        Comment = { fg = mocha.overlay1 }
      }
    end,
  },

  flavour = "frappe",
  styles = {
    comments = {},
    conditionals = {}
  },
  transparent_background = true,

  integrations = {
    cmp = true,
    dashboard = true,
    gitgutter = true,
    gitsigns = true,
    illuminate = true,
    markdown = true,
    mason = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    ts_rainbow = true,
    which_key = true,

    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },

    dap = {
      enabled = true,
      enable_ui = true,
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
  },
})

lvim.builtin.bufferline.highlights = require("catppuccin.groups.integrations.bufferline").get()
lvim.colorscheme = "catppuccin"
