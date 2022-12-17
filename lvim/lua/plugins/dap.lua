lvim.builtin.dap.active = true

require("dap-vscode-js").setup({
  -- debugger_path = path of vscode-js-debug,
  adapters = { 'pwa-node' },
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {}
end


require('dap.ext.vscode').load_launchjs(nil, { ['pwa-node'] = { 'typescript', 'javascript' } })

lvim.keys.normal_mode["<F5>"] = "<Cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F9>"] = " <Cmd>lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F10>"] = " <Cmd>lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<F12>"] = " <Cmd>lua require'dap'.step_out()<CR>"
