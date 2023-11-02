require("bufferline").setup {
  options = {
    themable = true,
    diagnostics = "nvim_lsp",
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        highlight = "PanelHeading",
        padding = 1,
      },
    },
  },
}
