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
  -- formatting.eslint,
  -- diagnostics.eslint,
  -- code_actions.eslint,

  -- Lua
  formatting.stylua,

  -- Bash
  formatting.beautysh,

  -- json
  formatting.fixjson,
  diagnostics.jsonlint,

  -- go
  code_actions.gomodifytags,
  formatting.goimports_reviser,
  formatting.gofumpt,
  -- diagnostics.golangci_lint,

  -- yml
  formatting.yq,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
