local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.options.theme = "catppuccin"

lvim.builtin.lualine.sections = {
  lualine_a = { components.mode },
  lualine_b = { components.filename },
  lualine_c = { components.branch, components.diff, components.diagnostics },
  lualine_x = { components.filetype, components.lsp },
  lualine_y = { components.treesitter },
  lualine_z = {}
}
