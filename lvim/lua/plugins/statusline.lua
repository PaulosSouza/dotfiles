local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.options.theme = "catppuccin"

lvim.builtin.lualine.sections = {
  lualine_a = { components.mode },
  lualine_b = { components.filename },
  lualine_c = { components.filetype, components.branch },

  lualine_x = { components.diff, components.diagnostics, components.lsp },
  lualine_y = { components.treesitter },
  lualine_z = {}
}
