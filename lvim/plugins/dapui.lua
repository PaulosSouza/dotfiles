require("dapui").setup()

lvim.builtin.which_key.mappings["D"] = {
  name = "+Dapui",
  o = { "<cmd>lua require'dapui'.open()<cr>", "Open UI" },
  c = { "<cmd>lua require'dapui'.close()<cr>", "Close UI" }
}
