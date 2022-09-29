require("dapui").setup()

lvim.builtin.which_key.mappings["m"] = {
  name = "+Dapui",
  m = { "<cmd>lua require'dapui'.open()<cr>", "Open UI" },
  n = { "<cmd>lua require'dapui'.close()<cr>", "Close UI" }
}
