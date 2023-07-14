local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = lspconfig.util

local vue_dir = "/home/paulosouza/Personal/vue/"

local function get_typescript_server_path(root_dir)
  local global_ts = "/home/paulosouza/.asdf/installs/nodejs/18.16.0/.npm/lib/node_modules/typescript/lib"
  local found_ts = ""
  local function check_dir(path)
    found_ts = util.path.join(path, "node_modules", "typescript", "lib")
    if util.path.exists(found_ts) then
      return path
    end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

local function only_vue_dir(uri)
  return string.find(uri, vue_dir)
end

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
  "eslint",
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = function(fname)
    local uri = vim.uri_from_fname(fname)
    local is_vue_dir = string.find(uri, vue_dir)

    if is_vue_dir == nil then
      return util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")(fname) or vim.loop.cwd()
    end

    return nil
  end,
  single_file_support = false,
}

lspconfig.volar.setup {
  on_new_config = function(new_config, new_root_dir)
    new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
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
    return only_vue_dir(vim.uri_from_fname(fname)) and vue_dir or nil
  end,
}

lspconfig.vuels.setup {
  root_dir = function(fname)
    return only_vue_dir(vim.uri_from_fname(fname)) and vue_dir or nil
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
