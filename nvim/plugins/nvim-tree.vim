
lua << EOF
require'nvim-tree'.setup {
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
  view = {
      width = 45,
      side = 'right',
    },
  renderer = {
    group_empty = true,
    highlight_git = true,
    highlight_opened_files = "icon",
    indent_markers = {
        enable = true
      },
    },
  actions = {
    open_file = {
        quit_on_open = true
      }
    },
  filters = {
      custom = { '.git', 'node_modules', '.cache' }
    }
  
}
EOF

nnoremap <C-a> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
