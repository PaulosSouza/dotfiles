local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.opts.hl = "String"
dashboard.section.header.val = {
  "        ▄▄▄▄▄███████████████████▄▄▄▄▄      ",
  "      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄    ",
  "     █▀████████▄             ▀▀████ ▀██▄   ",
  "    █▄▄██████████████████▄▄▄         ▄██▀  ",
  "     ▀█████████████████████████▄    ▄██▀   ",
  "       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀     ",
  "         ▀███▄              ▀██████▀       ",
  "           ▀██████▄        ▄████▀          ",
  "              ▀█████▄▄▄▄▄▄▄███▀            ",
  "                ▀████▀▀▀████▀              ",
  "                  ▀███▄███▀                ",
  "                     ▀█▀                   ",
  "",
  "                [@paulosouza]              ",
  "",
  "",
}

dashboard.section.buttons.opts.hl = "Number"
dashboard.section.buttons.val = {
  dashboard.button("SPC f o", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>"),
  dashboard.button("SPC f f", "  Find File", "<CMD>Telescope find_files<CR>"),
  dashboard.button("SPC f w", "󰱼  Find Word", "<CMD>Telescope live_grep<CR>"),
  dashboard.button("SPC f g", "󰊢  Git Status", "<CMD>Telescope git_status<CR>"),
}

dashboard.section.footer.val = "  +   +   ..."
dashboard.section.footer.opts.hl = "Linenr"

require("alpha").setup(dashboard.opts)

