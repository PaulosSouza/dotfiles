local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local utils = require "custom.configs.utils"

local lspconfig = require "lspconfig"
local lspconfig_util = lspconfig.util

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "clangd",
  "dotls",
  "jsonls",
  "dockerls",
  "gopls",
  "tailwindcss",
  "docker_compose_language_service",
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = function(fname)
    local uri = vim.uri_from_fname(fname)
    local is_vue_dir = string.find(uri, utils.vue_dir)

    if is_vue_dir == nil then
      return lspconfig_util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")(fname)
        or vim.loop.cwd()
    end

    return nil
  end,
  single_file_support = false,
}

lspconfig.volar.setup {
  on_new_config = function(new_config, new_root_dir)
    new_config.init_options.typescript.tsdk = utils.get_typescript_server_path(new_root_dir)
  end,
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "typescript",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "vue",
    "json",
  },
  root_dir = function(fname)
    return utils.only_vue_dir(vim.uri_from_fname(fname)) and utils.vue_dir or nil
  end,
}

lspconfig.stylelint_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "css", "less", "scss", "sass" },
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
