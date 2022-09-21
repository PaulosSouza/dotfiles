-- -- set additional linters

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "prettierd" },
  { name = "gofumpt" }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "eslint_d" },
  { name = "golangci_lint" }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
}
