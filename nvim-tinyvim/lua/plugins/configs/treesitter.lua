require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "tsx",
    "html",
    "css",
    "typescript",
    "javascript",
    "markdown",
    "markdown_inline"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "css",
      "lua",
      "xml",
      "markdown",
    },
  },
}
