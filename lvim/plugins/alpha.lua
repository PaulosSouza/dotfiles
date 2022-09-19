lvim.builtin.alpha.active = true

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

lvim.builtin.alpha.dashboard.section.buttons.entries = {
  { "SPC f o", "  Recently Used Files", "<CMD>Telescope oldfiles<CR>" },
  { "SPC f f", "  Find File", "<CMD>Telescope find_files<CR>" },
  { "SPC f w", "  Find Word", "<CMD>Telescope live_grep<CR>" },
  { "SPC f g", "  Git Status", "<CMD>Telescope git_status<CR>" },
  { "SPC c  ", "  Configuration", "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. "<CR>",
  },
}

lvim.builtin.alpha.dashboard.section.footer.val = "  +   +   ..."
