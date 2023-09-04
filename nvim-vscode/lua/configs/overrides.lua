local M = {}

M.neoscroll = {
  mappedKeys = {
    ["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } },
    ["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "250" } },
    ["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "450" } },
    ["<C-m>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "450" } },
    ["<C-y>"] = { "scroll", { "-0.10", "false", "100" } },
    ["<C-e>"] = { "scroll", { "0.10", "false", "100" } },
    ["zt"] = { "zt", { "250" } },
    ["zz"] = { "zz", { "250" } },
    ["zb"] = { "zb", { "250" } },
  },

  config = {
    hide_cursor = true,
    stop_eof = true,
    use_local_scrolloff = false,
    respect_scrolloff = false,
    cursor_scrolls_alone = true,
    easing_function = nil,
    pre_hook = nil,
    post_hook = nil,
  },
}

return M
