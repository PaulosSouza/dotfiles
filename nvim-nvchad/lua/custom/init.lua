local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

opt.cursorline = false

autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    require("lazygit.utils").project_root_dir()
  end,
})

opt.foldcolumn = "0"
opt.foldlevel = 999999
opt.foldlevelstart = 99
opt.foldenable = true
