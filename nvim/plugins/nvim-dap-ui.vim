lua << EOF
  require("dapui").setup()
EOF

nnoremap <silent> <leader>m <cmd>lua require("dapui").open()<CR>
nnoremap <silent> <leader>n <cmd>lua require("dapui").close()<CR>
