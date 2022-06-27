if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors " enable true colors support
endif

lua << EOF
  vim.g.dracula_transparent_bg = true
EOF

colorscheme dracula



