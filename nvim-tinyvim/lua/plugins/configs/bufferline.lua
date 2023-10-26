require("bufferline").setup {
  options = {
    themable = true,
    diagnostics = "nvim_lsp",
    offsets = {
      { filetype = "NvimTree", highlight = "NvimTreeNormal" },
    },
  },
}
