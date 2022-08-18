lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'tsx', 'css', 'json', 'graphql', 'json5', 'bash', 'prisma', 'go', 'yaml', 'vim', 'gomod', 'gitignore', 'markdown', 'regex', 'sql', 'dockerfile'},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = false
  },
  context_commentstring = {
    enable = true
  }
}
EOF

