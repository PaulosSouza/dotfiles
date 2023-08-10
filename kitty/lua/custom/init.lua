local opt = vim.opt
local wo = vim.wo
local autocmd = vim.api.nvim_create_autocmd

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
wo.wrap = false
opt.cursorline = false
