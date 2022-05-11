let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_group_empty = 1

lua << EOF
require'nvim-tree'.setup {
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
  view = {
      width = 45,
      side = 'right',
    },
  renderer = {
    indent_markers = {
        enable = true
      }
    },
  actions = {
    open_file = {
        quit_on_open = true
      }
    },
  git = {
      enable = true
    },
  filters = {
      custom = { '.git', 'node_modules', '.cache' }
    }
}
EOF

nnoremap <C-a> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
