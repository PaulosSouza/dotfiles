require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = { prompt_position = "top" },
    },
  },
}
