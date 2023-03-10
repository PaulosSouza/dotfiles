-- Leader
lvim.leader = "space"

-- Normal Mode
lvim.keys.normal_mode["<leader>c"] = "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>"

-- End of lines
lvim.keys.normal_mode["H"] = "^"
lvim.keys.normal_mode["L"] = "$"
lvim.keys.visual_mode["H"] = "^"
lvim.keys.visual_mode["L"] = "$"

-- Which key
lvim.builtin.which_key.mappings["v"] = {
  name = "Splits",
  v = { ":vsplit<cr>", "Vertical" },
  h = { ":split<cr>", "Horizontal" },
  o = { ":SymbolsOutline<cr>", "Open Symbols Outline" },
}
