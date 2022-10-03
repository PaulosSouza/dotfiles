-- Leader
lvim.leader = "space"

-- Normal Mode
lvim.keys.normal_mode["<A-j>"] = ":w<cr>"
lvim.keys.normal_mode["<leader>c"] = "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>"
lvim.keys.normal_mode["<S-l>"] = "$"
lvim.keys.normal_mode["<S-h>"] = "^"
lvim.keys.normal_mode["<C-0>"] = ":ToggleTerm<cr>"

-- Visual Mode
lvim.keys.visual_mode["<S-l>"] = "$"
lvim.keys.visual_mode["<S-h>"] = "^"

-- Which key
lvim.builtin.which_key.mappings["v"] = {
  name = "Splits",
  v = { ":vsplit<cr>", "Vertical" },
  h = { ":split<cr>", "Horizontal" },
}
