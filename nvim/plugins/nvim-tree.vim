let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_gitignore = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_group_empty = 1

lua << EOF
require'nvim-tree'.setup {
  auto_close = true,
  ignore_ft_on_setup  = { 'startify', 'dashboard' },
  view = {
      width = 45,
      auto_resize = true,
      side = 'right',
    }
}
EOF

nnoremap <C-a> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
