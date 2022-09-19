lvim.keys.normal_mode["<leader>f"] = false

lvim.builtin.which_key.mappings["f"] = {
  name = "Telescope",
  w = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Find word" },
  f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Find file" },
  b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Find buffers" },
  s = { "<cmd>lua require('telescope.builtin').grep_string()<cr>", "Grep string" },
  g = { "<cmd>lua require('telescope.builtin').git_status()<cr>", "Git status" },
  o = { "<cmd>lua require('telescope.builtin').oldfiles()<cr>", "Old files" },
  h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help tags" },
}
