lvim.builtin.alpha.active = true

local dashboard = require("alpha.themes.dashboard")

lvim.builtin.alpha.dashboard.section.header.val = {
  '        ▄▄▄▄▄███████████████████▄▄▄▄▄      ',
  '      ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄    ',
  '     █▀████████▄             ▀▀████ ▀██▄   ',
  '    █▄▄██████████████████▄▄▄         ▄██▀  ',
  '     ▀█████████████████████████▄    ▄██▀   ',
  '       ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀     ',
  '         ▀███▄              ▀██████▀       ',
  '           ▀██████▄        ▄████▀          ',
  '              ▀█████▄▄▄▄▄▄▄███▀            ',
  '                ▀████▀▀▀████▀              ',
  '                  ▀███▄███▀                ',
  '                     ▀█▀                   ',
  '',
  '                [@paulosouza]              ',
  '',
  '',
}

lvim.builtin.alpha.dashboard.section.buttons.val = {
  dashboard.button("SPC f o", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>"),
  dashboard.button("SPC f f", "  Find File", "<CMD>Telescope find_files<CR>"),
  dashboard.button("SPC f w", "  Find Word", "<CMD>Telescope live_grep<CR>"),
  dashboard.button("SPC f g", "  Git Status", "<CMD>Telescope git_status<CR>"),
  dashboard.button("SPC c  ", "  Configuration",
    "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. "<CR>"),
}

lvim.builtin.alpha.dashboard.section.footer.val = "  +   +   ..."
