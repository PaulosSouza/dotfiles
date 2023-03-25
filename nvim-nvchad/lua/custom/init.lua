local opt = vim.opt
local lsp = vim.lsp
local autocmd = vim.api.nvim_create_autocmd

opt.cursorline = false

autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    require("lazygit.utils").project_root_dir()
  end,
})

autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    lsp.buf.format { async = true }
  end,
})
