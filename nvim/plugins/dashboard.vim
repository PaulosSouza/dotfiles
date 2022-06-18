
lua <<EOF
  local home = os.getenv('HOME')
  local db = require('dashboard')

  db.custom_header = {
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

  db.custom_center = {     
  { 
      icon = '  ',
      desc = 'Recently opened files                   ',
      action = 'Telescope oldfiles',
      shortcut = 'SPC f o'
  },
  { 
      icon = '  ',
      desc = 'Find File                               ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'
  },
  { 
      icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'
  },
  { 
      icon = '  ',
      desc = 'Find Word                               ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'
  },
  { 
      icon = '  ',
      desc = 'Git Status                              ',
      action = 'Telescope git_status',
      shortcut = 'SPC f g'
  },
}

  db.custom_footer = {
    desc = "  +   ..."
  }
EOF



