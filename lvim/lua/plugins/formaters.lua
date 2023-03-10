local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "prettierd", filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css" } },
  { name = "gofumpt" },
  { name = "eslint_d" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "golangci_lint" },
  { name = "eslint_d" },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
}
