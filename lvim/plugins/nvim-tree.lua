lvim.builtin.nvimtree.active = true
lvim.builtin.nvimtree.setup.view.width = 35
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer = {
  group_empty = true,
  highlight_git = true,
  highlight_opened_files = "icon",
  indent_markers = {
    enable = true
  },
  icons = {
    show = {
      git = false
    }
  }
}
lvim.builtin.nvimtree.setup.actions = {
  change_dir = {
    enable = false
  },
  open_file = {
    quit_on_open = true
  }
}

lvim.builtin.filters = {
  custom = { 'node_modules', '.cache' }
}
