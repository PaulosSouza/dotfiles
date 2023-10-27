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
return require("leap").add_default_mappings()
