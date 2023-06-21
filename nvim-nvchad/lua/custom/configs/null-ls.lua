local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {

  -- formatting

  -- webdev stuff
  formatting.prettierd.with { filetypes = { "html", "markdown", "css", "less", "sass", "scss", "handlebars" } },
  diagnostics.editorconfig_checker,

  -- eslint
  formatting.eslint_d,
  diagnostics.eslint_d,
  code_actions.eslint_d,

  -- Lua
  formatting.stylua,

  -- json
  formatting.fixjson,
  diagnostics.jsonlint,

  -- go
  formatting.goimports_reviser,
  formatting.gofumpt,

  diagnostics.golangci_lint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
