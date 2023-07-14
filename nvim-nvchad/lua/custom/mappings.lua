---@type MappingsTable
local M = {}

local default_opts = { silent = true, noremap = true }

table.indexOf = function(tbl, item)
  for i, value in ipairs(tbl) do
    if value == item then
      return i
    end
  end
  return -1
end

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["H"] = { "^", "end of line" },
    ["L"] = { "$", "beginning of line" },
    ["q"] = { ":q<cr>" },
    ["Q"] = { ":qa!<cr>" },
    ["<leader>fg"] = { ":LazyGit<cr>", "lazygit" },

    -- Splits
    ["<leader>ss"] = { ":SymbolsOutline<cr>", "Symbols Outline" },

    -- Tabs
    ["<leader>tn"] = { ":tabnew<cr>", "New tab" },
    ["<leader>tl"] = { ":tabnext<cr>", "Next tab" },
    ["<leader>th"] = { ":tabprevious<cr>", "Previous tab" },

    ["<leader>fm"] = {
      function()
        local currentFileTypes = vim.api.nvim_buf_get_option(0, "filetype")
        local filetypesAvailable = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue" }

        local isFileTypeAvailable = table.indexOf(filetypesAvailable, currentFileTypes) ~= -1

        if isFileTypeAvailable then
          vim.api.nvim_command "EslintFixAll"
        else
          vim.lsp.buf.format { async = true }
        end
      end,
      "LSP formatting",
    },
  },
  v = {
    ["H"] = { "^" },
    ["L"] = { "$" },
  },
}

M.debugger = {
  plugin = true,

  n = {
    ["<leader>dt"] = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint", opts = default_opts },
    ["<leader>db"] = { ":lua require'dap'.step_back()<cr>", "Step Back", opts = default_opts },
    ["<leader>dc"] = { ":lua require'dap'.continue()<cr>", "Continue", opts = default_opts },
    ["<leader>dC"] = { ":lua require'dap'.run_to_cursor()<cr>", "Run To Cursor", opts = default_opts },
    ["<leader>dd"] = { ":lua require'dap'.disconnect()<cr>", "Disconnect", opts = default_opts },
    ["<leader>dg"] = { ":lua require'dap'.session()<cr>", "Get Session", opts = default_opts },
    ["<leader>di"] = { ":lua require'dap'.step_into()<cr>", "Step Into", opts = default_opts },
    ["<leader>do"] = { ":lua require'dap'.step_over()<cr>", "Step Over", opts = default_opts },
    ["<leader>du"] = { ":lua require'dap'.step_out()<cr>", "Step Out", opts = default_opts },
    ["<leader>dp"] = { ":lua require'dap'.pause()<cr>", "Pause", opts = default_opts },
    ["<leader>dr"] = { ":lua require'dap'.repl.toggle()<cr>", "Toggle Repl", opts = default_opts },
    ["<leader>ds"] = { ":lua require'dap'.continue()<cr>", "Start", opts = default_opts },
    ["<leader>dq"] = { ":lua require'dap'.close()<cr>", "Quit", opts = default_opts },
    ["<leader>dU"] = { ":lua require'dapui'.toggle({reset = true})<cr>", "Toggle UI", opts = default_opts },
    ["<F4>"] = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint", opts = default_opts },
    ["<F5>"] = { ":lua require'dap'.continue()<cr>", "Start", opts = default_opts },
    ["<F10>"] = { ":lua require'dap'.step_over()<cr>", "Step Over", opts = default_opts },
    ["<F11>"] = { ":lua require'dap'.step_into()<cr>", "Step Into", opts = default_opts },
    ["<F12>"] = { ":lua require'dap'.close()<cr>", "Quit", opts = default_opts },
  },
}

M.telescope = {
  plugin = true,

  n = {
    ["<leader>fs"] = { "<cmd> Telescope grep_string <CR>", "Find Word" },
  },
}

M.trouble = {
  plugin = true,

  n = {
    ["gr"] = { ":Trouble lsp_references<cr>", "References", opts = { silent = true, noremap = true } },
    ["gd"] = { ":Trouble lsp_definitions<cr>", "Definitions", opts = { silent = true, noremap = true } },
    ["gD"] = { ":Trouble document_diagnostics<cr>", "Document Diagnostics", opts = { silent = true, noremap = true } },
  },
}

M.true_zen = {
  plugin = true,

  n = {
    ["<leader>zn"] = { ":TZNarrow<cr>", "Zen Narrow" },
    ["<leader>zf"] = { ":TZFocus<cr>", "Zen Focus" },
    ["<leader>zm"] = { ":TZMinimalist<cr>", "Zen Minimalist" },
    ["<leader>za"] = { ":TZAtaraxis<cr>", "Zen Ataraxis" },
  },

  v = {
    ["<leader>zn"] = { ":'<,'>TZNarrow<cr>", "Zen Ataraxis" },
  },
}

M.focus = {
  plugin = true,

  n = {
    ["<leader>sl"] = { ":FocusSplitLeft<CR>", "Split Left", opts = { silent = true } },
    ["<leader>sj"] = { ":FocusSplitDown<CR>", "Split Down", opts = { silent = true } },
    ["<leader>sk"] = { ":FocusSplitUp<CR>", "Split Up", opts = { silent = true } },
    ["<leader>sm"] = { ":FocusMaxOrEqual<CR>", "Split Up", opts = { silent = true } },
    ["<leader>st"] = { ":FocusToggle<CR>", "Split Up", opts = { silent = true } },
  },
}

return M
