require("bufferline").setup {
  options = {
    themable = true,
    diagnostics = "nvim_lsp",
    separator_style = "thin",
    offsets = {
      { filetype = "NvimTree", highlight = "NvimTreeNormal" },
    },
  },
}
