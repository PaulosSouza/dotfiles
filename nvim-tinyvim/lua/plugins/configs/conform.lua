local eslint_format = { "eslint_d" }

require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },

    json = { "fixjson" },
    jsonc = { "fixjson" },

    javascript = eslint_format,
    javascriptreact = eslint_format,
    typescript = eslint_format,
    typescriptreact = eslint_format,
    jsx = eslint_format,
    tsx = eslint_format,
  },
}
