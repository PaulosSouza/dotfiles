if (has("termguicolors"))
  set termguicolors " enable true colors support
endif

lua << EOF
  vim.g.dracula_transparent_bg = true
EOF

colorscheme dracula



