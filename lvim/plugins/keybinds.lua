-- Leader
lvim.leader = "space"

-- Normal Mode
lvim.keys.normal_mode["<A-j>"] = ":w<cr>"
lvim.keys.normal_mode["<A-l>"] = "$"
lvim.keys.normal_mode["<A-h>"] = "^"
lvim.keys.normal_mode["<leader>c"] = "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>"


-- Visual Mode
lvim.keys.visual_mode["<A-l>"] = "$"
lvim.keys.visual_mode["<A-h>"] = "^"
