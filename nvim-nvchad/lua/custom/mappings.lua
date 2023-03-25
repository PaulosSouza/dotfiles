---@type MappingsTable

---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["H"] = { "^", "end of line" },
    ["L"] = { "$", "beginning of line" },

    ["q"] = { ":q<cr>" },
    ["Q"] = { ":qa!<cr>" },

    ["<leader>sv"] = { ":vsplit<cr>", "split vertically" },
    ["<leader>sh"] = { ":split<cr>", "split horizontally" },

    ["<leader>fg"] = { ":LazyGit<cr>", "lazygit" },
  },

  v = {
    ["H"] = { "^" },
    ["L"] = { "$" },
  },
}

M.tabs = {
  n = {
    ["<leader>tn"] = { ":tabnew<cr>", "New tab" },
    ["<leader>tl"] = { ":tabnext<cr>", "Next tab" },
    ["<leader>th"] = { ":tabprevious<cr>", "Previous tab" },
  },
}

M.debugger = {
  n = {
    -- leader
    ["<leader>dt"] = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>db"] = { ":lua require'dap'.step_back()<cr>", "Step Back" },
    ["<leader>dc"] = { ":lua require'dap'.continue()<cr>", "Continue" },
    ["<leader>dC"] = { ":lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
    ["<leader>dd"] = { ":lua require'dap'.disconnect()<cr>", "Disconnect" },
    ["<leader>dg"] = { ":lua require'dap'.session()<cr>", "Get Session" },
    ["<leader>di"] = { ":lua require'dap'.step_into()<cr>", "Step Into" },
    ["<leader>do"] = { ":lua require'dap'.step_over()<cr>", "Step Over" },
    ["<leader>du"] = { ":lua require'dap'.step_out()<cr>", "Step Out" },
    ["<leader>dp"] = { ":lua require'dap'.pause()<cr>", "Pause" },
    ["<leader>dr"] = { ":lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
    ["<leader>ds"] = { ":lua require'dap'.continue()<cr>", "Start" },
    ["<leader>dq"] = { ":lua require'dap'.close()<cr>", "Quit" },
    ["<leader>dU"] = { ":lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI" },

    ["<F4>"] = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
    ["<F5>"] = { ":lua require'dap'.continue()<cr>", "Start" },
    ["<F10>"] = { ":lua require'dap'.step_over()<cr>", "Step Over" },
    ["<F11>"] = { ":lua require'dap'.step_into()<cr>", "Step Into" },
    ["<F12>"] = { ":lua require'dap'.close()<cr>", "Quit" },
  },
}

M.trouble = {
  n = {
    ["tr"] = { ":Trouble lsp_references<cr>", "References" },
    ["tf"] = { ":Trouble lsp_definitions<cr>", "Definitions" },
    ["td"] = { ":Trouble document_diagnostics<cr>", "Diagnostics" },
    ["tq"] = { ":Trouble quickfix<cr>", "QuickFix" },
    ["tl"] = { ":Trouble loclist<cr>", "LocationList" },
    ["tw"] = { ":Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
  },
}

return M
