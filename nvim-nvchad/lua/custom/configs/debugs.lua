local M = {}

M.vscode_js = {
  debugger_path = vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter",
  debugger_cmd = { "js-debug-adapter" },
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  log_file_path = vim.fn.stdpath "data" .. "/lazy/nvim-dap-vscode-js/cache.log",
  log_file_level = 1,
  log_console_level = vim.log.levels.ERROR,
}

return M
