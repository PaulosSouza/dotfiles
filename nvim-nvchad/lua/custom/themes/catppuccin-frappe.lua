local M = {}

M.base_30 = {
    darker_black = "#232634",
    black = "#303446", --  nvim bg
    black2 = "#292C3C",

    one_bg = "#454a64", -- real bg of onedark
    one_bg2 = "#596183",
    one_bg3 = "#71799e",

  white = "#D9E0EE",

  grey = "#596183",
  grey_fg = "#71799e",
  grey_fg2 = "#8f96b3",
  light_grey = "#b8bcce",

  red = "#E78284",

  baby_pink = "#ffa5c3",
  pink = "#F4B8E4",

  line = "#c6d0f5", -- for lines like vertsplit

  green = "#A6D189",

  yellow = "#E5C890",

  blue = "#8CAAEE",
  folder_bg = "#89B4FA",
  lavender = "#BABBF1",
  
  rosewater = "#F2D5CF",
  flamingo = "#EEBEBE",
  mauve = "#CA9EE6	",
  maroon = "#EA999C",
  peach = "#EF9F76",
  teal = "#81C8BE",
  sky = "#99D1DB",
  sapphire = "#85C1DC",
  text = "#c6d0f5",
  subtext1 = "#b5bfe2",
  subtext0 = "#a5adce",
  overlay2 = "#949cbb",
  overlay1 = "#838ba7",
  overlay0 = "#737994",
  surface2 = "#626880",
  surface1 = "#51576d",
  surface0 = "#414559",
}

M.base_16 = {
  base00 = "#303446",
  base01 = "#292C3C",
  base02 = "#292C3C",
  base03 = "#626880",
  base04 = "#F2D5CF",
  base05 = "#c6d0f5",

  base06 = "#ccd3e1",
  base07 = "#D9E0EE",

  base08 = "#737994",
  base09 = "#F8BD96",
  base0A = "#FAE3B0",
  base0B = "#ABE9B3",
  base0C = "#89DCEB",
  base0D = "#89B4FA",
  base0E = "#CBA6F7",
  base0F = "#F38BA8",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "catppuccin-frappe")

return M