lua << EOF
require 'jabs'.setup {
  use_devicons = true
}
EOF

nnoremap <leader>b :JABSOpen<cr>
